#include "passes.h"

static cl::opt<std::string>
    target("target", cl::desc("Specify target function"), cl::value_desc("klee_change"), cl::init("klee_change"));

bool FindCaller::runOnModule(Module &M) {

  int cnt = 0;
  bool found = false;



  for (auto &f:M) {

    for (auto &b:f) {


      for (auto &i:b) {
        CallSite ii = CallSite(&i);
	
        if (ii) {

	  

          auto fn = ii.getCalledFunction();

	  if(!fn) continue;

          auto funcName = fn->getName();

          if (funcName == target.getValue()) {

	    cnt++;
            if (cnt == 1) {
              outs() << f.getName();
            } else {
              outs() << "," << f.getName();
            }

            found = true;
            break;
          }

        }
      }
      if (found) {
        found = false;
        break;
      }

    }
  }

  return false;
}

char FindCaller::ID = 0;

static RegisterPass<FindCaller> X("target_caller", "find target functions");
