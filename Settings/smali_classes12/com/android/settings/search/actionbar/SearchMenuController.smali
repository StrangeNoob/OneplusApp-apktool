.class public Lcom/android/settings/search/actionbar/SearchMenuController;
.super Ljava/lang/Object;
.source "SearchMenuController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;


# static fields
.field public static final NEED_SEARCH_ICON_IN_ACTION_BAR:Ljava/lang/String; = "need_search_icon_in_action_bar"


# instance fields
.field private final mHost:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "host"    # Landroid/app/Fragment;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    .line 52
    return-void
.end method

.method public static init(Lcom/android/settingslib/core/lifecycle/ObservableFragment;)V
    .locals 2
    .param p0, "host"    # Lcom/android/settingslib/core/lifecycle/ObservableFragment;

    .line 47
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/actionbar/SearchMenuController;

    invoke-direct {v1, p0}, Lcom/android/settings/search/actionbar/SearchMenuController;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 48
    return-void
.end method

.method public static init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V
    .locals 2
    .param p0, "host"    # Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    .line 43
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/actionbar/SearchMenuController;

    invoke-direct {v1, p0}, Lcom/android/settings/search/actionbar/SearchMenuController;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 44
    return-void
.end method

.method public static synthetic lambda$onCreateOptionsMenu$0(Lcom/android/settings/search/actionbar/SearchMenuController;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "target"    # Landroid/view/MenuItem;

    .line 75
    sget-object v0, Lcom/android/settings/search/SearchFeatureProvider;->SEARCH_UI_INTENT:Landroid/content/Intent;

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/search/SearchFeatureProvider;->getSettingsIntelligencePkgName()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 80
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 56
    iget-object v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    if-nez p1, :cond_1

    .line 60
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v1, "need_search_icon_in_action_bar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    return-void

    .line 66
    :cond_2
    const v1, 0x7f120fa3

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 70
    .local v1, "searchItem":Landroid/view/MenuItem;
    const v2, 0x7f0801ec

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 72
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 74
    new-instance v2, Lcom/android/settings/search/actionbar/-$$Lambda$SearchMenuController$5lHWir39yWMPpFtqgtH1CYNgf1M;

    invoke-direct {v2, p0}, Lcom/android/settings/search/actionbar/-$$Lambda$SearchMenuController$5lHWir39yWMPpFtqgtH1CYNgf1M;-><init>(Lcom/android/settings/search/actionbar/SearchMenuController;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 82
    return-void
.end method
