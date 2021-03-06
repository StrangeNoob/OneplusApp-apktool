.class Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OPGestureSearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 495
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 496
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    .line 497
    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-nez v1, :cond_0

    .line 535
    invoke-static {}, Lcom/oneplus/settings/OPGestureSettings;->access$000()Ljava/util/List;

    move-result-object v0

    .line 537
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 538
    :cond_1
    const-string v1, "open_light_device_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    const-string v1, "draw_o_start_camera_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 543
    :cond_3
    const-string v1, "oneplus_draw_o_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    const-string v1, "oneplus_draw_v_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    const-string v1, "oneplus_draw_s_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    const-string v1, "oneplus_draw_m_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    const-string v1, "oneplus_draw_w_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGesturePullNotificationBar()Z

    move-result v1

    if-nez v1, :cond_5

    .line 551
    const-string v1, "op_fingerprint_gesture_swipe_down_up"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_5
    const-string v1, "fingerprint_gesture_control"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    const-string v1, "op_fingerprint_long_press_camera_shot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-nez v1, :cond_0

    .line 504
    return-object v0

    .line 507
    :cond_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 508
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f160084

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 509
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    return-object v0
.end method
