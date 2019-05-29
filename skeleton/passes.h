//
// Created by ailu on 2019-04-03.
//

#ifndef PASSES_PASS_H

#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRBuilder.h"

#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/CallSite.h"
#include "llvm/IR/DataLayout.h"

#include <vector>
#include <string>
#include <algorithm>
#include <fstream>
#include <sstream>

using namespace llvm;
using std::vector;
using std::string;
using std::ofstream;
using std::stringstream;

namespace {

struct FindCaller : public ModulePass {
  static char ID;

  FindCaller() : ModulePass(ID) {}

  bool runOnModule(Module &f) override;

};

struct Rename : public ModulePass {
  static char ID;

  Rename() : ModulePass(ID) {}

  bool runOnModule(Module &M) override;

  static void modifyArgument(Function &t, Module &M);

};

struct RunAsMain : public ModulePass {
  static char ID;

  RunAsMain() : ModulePass(ID) {}

  bool runOnModule(Module &M) override;
};

}

#endif //PASSES_PASS_H
