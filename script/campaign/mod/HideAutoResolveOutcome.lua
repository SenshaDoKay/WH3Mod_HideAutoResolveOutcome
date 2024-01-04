-- Kay's Hide AutoResolve Outcome for WH3

-- Credit to VARIANVS for creating the original: Robcore's Auto Resolve Fix for TW:WH2
-- Credit Ares106 for letting me use his code from the successor: Ares's remove Auto-resolve Outcome

function setOutcomeInvisible()
    local autoresolve_outcome = find_uicomponent(core:get_ui_root(), "popup_pre_battle", "mid", "battle_deployment",
        "regular_deployment", "list", "autoresolve_outcome")
    if is_uicomponent(autoresolve_outcome) then
        autoresolve_outcome:SetVisible(false)
    end
end

core:add_listener(
    "PreBattleScreen",
    "PanelOpenedCampaign",
    function(context)
        return context.string == "popup_pre_battle"
    end,
    setOutcomeInvisible,
    true
)
