// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop__pch.h"
#include "Vtop__Syms.h"
#include "Vtop_top.h"

VL_INLINE_OPT void Vtop_top___nba_sequent__TOP__top__0(Vtop_top* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+  Vtop_top___nba_sequent__TOP__top__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __Vdly__count;
    __Vdly__count = 0;
    CData/*7:0*/ __Vdly__state;
    __Vdly__state = 0;
    // Body
    __Vdly__state = vlSelfRef.state;
    __Vdly__count = vlSelfRef.count;
    if (vlSymsp->TOP.RST) {
        __Vdly__count = 0U;
        __Vdly__state = 0U;
    } else if ((0U == (IData)(vlSelfRef.state))) {
        if (vlSymsp->TOP.enable) {
            __Vdly__state = 1U;
        }
    } else if ((1U == (IData)(vlSelfRef.state))) {
        __Vdly__state = 2U;
    } else if ((2U == (IData)(vlSelfRef.state))) {
        __Vdly__count = (vlSelfRef.count + vlSymsp->TOP.value);
        __Vdly__state = 0U;
    }
    vlSelfRef.state = __Vdly__state;
    vlSelfRef.count = __Vdly__count;
}
