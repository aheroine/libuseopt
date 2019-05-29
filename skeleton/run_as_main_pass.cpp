#include "passes.h"

static cl::opt<std::string>
    target("main", cl::desc("Specify a new main function"));

bool RunAsMain::runOnModule(Module &M) {

  if (target.getValue() == "main") {
    auto f = M.getFunction("main__use_main__");
    f->setName("main");

    return true;
  }

  auto f = M.getFunction(target.getValue() + "__use_main__");

  if (f) {
    auto m = M.getFunction("main");
    if (m) {
      m->setName("main__use_main__");
    }

    f->setName("main");

  }

  return true;
}

char RunAsMain::ID = 0;

static RegisterPass<RunAsMain> X("run_as_main", "run target function as main");
