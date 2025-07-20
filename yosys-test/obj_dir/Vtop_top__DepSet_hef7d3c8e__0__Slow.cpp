// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop__pch.h"
#include "Vtop_top.h"

VL_ATTR_COLD void Vtop_top___ctor_var_reset(Vtop_top* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+  Vtop_top___ctor_var_reset\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    const uint64_t __VscopeHash = VL_MURMUR64_HASH(vlSelf->name());
    vlSelf->CLK = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 6192783415628501865ull);
    vlSelf->RST = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 6833730538555618687ull);
    vlSelf->enable = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 11030669854614834172ull);
    vlSelf->value = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 10523578686933994953ull);
    vlSelf->led = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 14009161575225144129ull);
    vlSelf->count = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 10730142128712957955ull);
    vlSelf->state = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 9404372463396948974ull);
}
