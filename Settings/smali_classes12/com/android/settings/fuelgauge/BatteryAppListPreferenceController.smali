.class public Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;


# static fields
.field private static final MAX_ITEMS_TO_LIST:I = 0xa

.field private static final MIN_AVERAGE_POWER_THRESHOLD_MILLI_AMP:I = 0xa

.field private static final MIN_POWER_THRESHOLD_MILLI_AMP:I = 0x5

.field private static final MSG_INTERVAL:I = 0x2710

.field private static final MSG_UPDATE:I = 0x3e8

.field private static final SECONDS_IN_HOUR:I = 0xe10

.field private static final STATS_TYPE:I = 0x0

.field static final TAG:Ljava/lang/String; = "BatteryAppList"

.field static final USE_FAKE_DATA:Z = false
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field mAnomalySparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;>;"
        }
    .end annotation
.end field

.field mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mForceCloseListener:Landroid/view/View$OnClickListener;

.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mHandler:Landroid/os/Handler;

.field private mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

.field private mPauseUpdate:Z

.field private mPrefContext:Landroid/content/Context;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceKey:Ljava/lang/String;

.field private mStatsType:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p4, "activity"    # Lcom/android/settings/SettingsActivity;
    .param p5, "fragment"    # Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mStatsType:I

    .line 114
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    .line 613
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$3;-><init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mForceCloseListener:Landroid/view/View$OnClickListener;

    .line 156
    if-eqz p3, :cond_0

    .line 157
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 160
    :cond_0
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    .line 161
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 162
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 163
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 164
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 167
    new-instance v0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;-><init>(Landroid/content/Context;Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 82
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/android/settings/SettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 82
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 82
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 82
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPauseUpdate:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 82
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->nextUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 82
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    return-object v0
.end method

.method private addNotAvailableMessage()V
    .locals 4

    .line 581
    const-string v0, "not_available"

    .line 582
    .local v0, "NOT_AVAILABLE":Ljava/lang/String;
    const-string v1, "not_available"

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 583
    .local v1, "notAvailable":Landroid/support/v7/preference/Preference;
    if-nez v1, :cond_0

    .line 584
    new-instance v2, Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 585
    const-string v2, "not_available"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 586
    const v2, 0x7f120e33

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 587
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 588
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 590
    :cond_0
    return-void
.end method

.method private cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 510
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 511
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 512
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 513
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 514
    .local v2, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 515
    goto :goto_1

    .line 517
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .end local v2    # "p":Landroid/support/v7/preference/Preference;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private concatHighPowerApp(Ljava/util/List;Landroid/os/BatteryStats;)Ljava/util/List;
    .locals 17
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Landroid/os/BatteryStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .local p1, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    .line 636
    move-object/from16 v1, p2

    if-nez p1, :cond_0

    .line 637
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .end local p1    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .local v2, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    goto :goto_0

    .line 640
    .end local v2    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .restart local p1    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_0
    move-object/from16 v2, p1

    .end local p1    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .restart local v2    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 641
    .local v3, "uids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 642
    .local v5, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    .end local v5    # "sipper":Lcom/android/internal/os/BatterySipper;
    goto :goto_1

    .line 644
    :cond_1
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    if-eqz v4, :cond_8

    .line 645
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v4}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getDataList()Ljava/util/List;

    move-result-object v4

    .line 646
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    const-string v5, "BatteryAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HighPowerApp list.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 649
    if-eqz v1, :cond_3

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mStatsType:I

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v5

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 650
    .local v5, "dischargeAmount":I
    :goto_3
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v6

    .line 651
    .local v6, "totalPower":D
    if-eqz v5, :cond_5

    const-wide/16 v10, 0x0

    cmpl-double v10, v10, v6

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    const-wide v10, 0x3fe3333333333333L    # 0.6

    int-to-double v12, v5

    div-double/2addr v10, v12

    mul-double/2addr v10, v6

    goto :goto_5

    :cond_5
    :goto_4
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 653
    .local v10, "totalPowerMah":D
    :goto_5
    const-string v12, "BatteryAppList"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "concatHighPowerApp list.size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 655
    .local v13, "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    iget v14, v13, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 656
    const-string v14, "BatteryAppList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "concatHighPowerApp add pkg="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v13, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", uid="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v13, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    new-instance v8, Lcom/android/internal/os/BatterySipper;

    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v14, Lcom/android/settings/fuelgauge/FakeUid;

    iget v15, v13, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-direct {v14, v15}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {v8, v9, v14, v0, v1}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 658
    .local v8, "sipper":Lcom/android/internal/os/BatterySipper;
    iput-wide v10, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 659
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    .end local v8    # "sipper":Lcom/android/internal/os/BatterySipper;
    goto :goto_7

    .line 661
    :cond_6
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v8, "BatteryAppList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "concatHighPowerApp exist pkg="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", uid="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v13, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget v8, v13, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    .line 663
    .restart local v8    # "sipper":Lcom/android/internal/os/BatterySipper;
    iget-wide v14, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpg-double v9, v14, v10

    if-gez v9, :cond_7

    .line 664
    iput-wide v10, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 667
    .end local v8    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v13    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    :cond_7
    :goto_7
    nop

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto/16 :goto_6

    .line 671
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .end local v5    # "dischargeAmount":I
    .end local v6    # "totalPower":D
    .end local v10    # "totalPowerMah":D
    :cond_8
    return-object v2
.end method

.method private getCachedCount()I
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 388
    .local p1, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 390
    .local v0, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 392
    .local v2, "numSippers":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_a

    .line 393
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 394
    .local v5, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    if-lez v6, :cond_9

    .line 395
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    .line 399
    .local v6, "realUid":I
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isSharedGid(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 400
    nop

    .line 401
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v7

    .line 400
    invoke-static {v3, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 405
    :cond_0
    invoke-static {v6}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isSystemUid(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "mediaserver"

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 406
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 410
    const/16 v6, 0x3e8

    .line 413
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 415
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/settings/fuelgauge/FakeUid;

    invoke-direct {v9, v6}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v10, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 417
    .local v7, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v7, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 418
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 419
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 420
    move-object v5, v7

    .line 423
    .end local v7    # "newSipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 424
    .local v7, "index":I
    if-gez v7, :cond_3

    .line 426
    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 429
    :cond_3
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    .line 430
    .local v8, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v8, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 431
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-nez v9, :cond_4

    iget-object v9, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 433
    iget-object v9, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 436
    :cond_4
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 437
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v9, v9

    goto :goto_1

    :cond_5
    move v9, v3

    .line 438
    .local v9, "existingPackageLen":I
    :goto_1
    iget-object v10, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 439
    iget-object v10, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v10, v10

    goto :goto_2

    :cond_6
    move v10, v3

    .line 440
    .local v10, "newPackageLen":I
    :goto_2
    if-lez v10, :cond_8

    .line 441
    add-int v11, v9, v10

    new-array v11, v11, [Ljava/lang/String;

    .line 442
    .local v11, "newPackages":[Ljava/lang/String;
    if-lez v9, :cond_7

    .line 443
    iget-object v12, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v12, v3, v11, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    :cond_7
    iget-object v12, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v12, v3, v11, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    iput-object v11, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 451
    .end local v6    # "realUid":I
    .end local v7    # "index":I
    .end local v8    # "existingSipper":Lcom/android/internal/os/BatterySipper;
    .end local v9    # "existingPackageLen":I
    .end local v10    # "newPackageLen":I
    .end local v11    # "newPackages":[Ljava/lang/String;
    :cond_8
    :goto_3
    goto :goto_4

    .line 452
    :cond_9
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .end local v5    # "sipper":Lcom/android/internal/os/BatterySipper;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 456
    .end local v4    # "i":I
    :cond_a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 457
    .local v4, "numUidSippers":I
    nop

    .local v3, "i":I
    :goto_5
    if-ge v3, v4, :cond_b

    .line 458
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 462
    .end local v3    # "i":I
    :cond_b
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v3, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->sortUsageList(Ljava/util/List;)V

    .line 463
    return-object v1
.end method

.method private static getFakeStats()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v0, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    const/high16 v1, 0x40a00000    # 5.0f

    .line 533
    .local v1, "use":F
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    .end local v1    # "use":F
    .local v5, "use":F
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v6, v2, v1

    .line 534
    .local v6, "type":Lcom/android/internal/os/BatterySipper$DrainType;
    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v6, v7, :cond_0

    .line 535
    goto :goto_1

    .line 537
    :cond_0
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    const/4 v8, 0x0

    float-to-double v9, v5

    invoke-direct {v7, v6, v8, v9, v10}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    const/high16 v7, 0x40a00000    # 5.0f

    add-float/2addr v5, v7

    .line 533
    .end local v6    # "type":Lcom/android/internal/os/BatterySipper$DrainType;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :cond_1
    move v1, v4

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x64

    const/16 v3, 0x2710

    if-ge v1, v2, :cond_2

    .line 541
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v7, Lcom/android/settings/fuelgauge/FakeUid;

    add-int/2addr v3, v1

    invoke-direct {v7, v3}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    float-to-double v8, v5

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 544
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lcom/android/internal/os/BatterySipper;

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v6, Lcom/android/settings/fuelgauge/FakeUid;

    invoke-direct {v6, v4}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    float-to-double v7, v5

    invoke-direct {v1, v2, v6, v7, v8}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v1, Lcom/android/internal/os/BatterySipper;

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v4, Lcom/android/settings/fuelgauge/FakeUid;

    .line 549
    invoke-static {v3}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v3

    invoke-direct {v4, v3}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v1, v2, v4, v6, v7}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 550
    .local v1, "sipper":Lcom/android/internal/os/BatterySipper;
    const-string v2, "dex2oat"

    iput-object v2, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 551
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v4, Lcom/android/settings/fuelgauge/FakeUid;

    const/16 v8, 0x2711

    .line 554
    invoke-static {v8}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v8

    invoke-direct {v4, v8}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    move-object v1, v2

    .line 555
    const-string v2, "dex2oat"

    iput-object v2, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 556
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v4, Lcom/android/settings/fuelgauge/FakeUid;

    const/16 v6, 0x3ef

    .line 559
    invoke-static {v6}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v6

    invoke-direct {v4, v6}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    move-object v1, v2

    .line 560
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    return-object v0
.end method

.method private static isSharedGid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 522
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSystemUid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .line 526
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 527
    .local v0, "appUid":I
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private nextUpdate()V
    .locals 4

    .line 629
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 631
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 633
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 570
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 571
    .local v1, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 572
    .end local v1    # "p":Landroid/support/v7/preference/Preference;
    goto :goto_0

    .line 573
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 574
    return-void
.end method

.method private setPowerState(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/PowerGaugePreference;",
            ">;)V"
        }
    .end annotation

    .line 675
    .local p1, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/settings/fuelgauge/PowerGaugePreference;>;"
    if-nez p1, :cond_0

    .line 676
    return-void

    .line 679
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 680
    .local v1, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setState(I)V

    .line 681
    .end local v1    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    goto :goto_0

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    if-eqz v0, :cond_3

    .line 683
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getDataList()Ljava/util/List;

    move-result-object v0

    .line 684
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 685
    const-string v1, "BatteryAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerState list.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 687
    .local v2, "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    iget v3, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 688
    const-string v3, "BatteryAppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPowerState pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget v3, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 690
    .local v3, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v2}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setState(I)V

    .line 692
    .end local v2    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .end local v3    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    :cond_2
    goto :goto_1

    .line 695
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public OnDataChanged()V
    .locals 2

    .line 596
    const-string v0, "BatteryAppList"

    const-string v1, "OnDataChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    if-nez v0, :cond_0

    .line 600
    const-string v0, "BatteryAppList"

    const-string v1, "null activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    new-instance v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$2;-><init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 611
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 203
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 204
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 205
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 206
    return-void
.end method

.method extractKeyFromSipper(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 3
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 490
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->extractKeyFromUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 492
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_1

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 494
    :cond_1
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_2

    .line 495
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 496
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 497
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 499
    :cond_3
    const-string v0, "BatteryAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inappropriate BatterySipper without uid and package names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v0, "-1"

    return-object v0
.end method

.method extractKeyFromUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 506
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 220
    instance-of v0, p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-eqz v0, :cond_1

    .line 221
    move-object v0, p1

    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 222
    .local v0, "pgp":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;

    move-result-object v8

    .line 223
    .local v8, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, 0x0

    .line 224
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getPercent()Ljava/lang/String;

    move-result-object v6

    .line 225
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAnomalySparseArray:Landroid/util/SparseArray;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAnomalySparseArray:Landroid/util/SparseArray;

    iget-object v7, v8, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 223
    :goto_0
    move-object v7, v5

    goto :goto_1

    .line 226
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 223
    :goto_1
    move-object v5, v8

    invoke-static/range {v1 .. v7}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Ljava/util/List;)V

    .line 227
    const/4 v1, 0x1

    return v1

    .line 229
    .end local v0    # "pgp":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v8    # "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 199
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 173
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 174
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPauseUpdate:Z

    .line 177
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->unregisterObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPauseUpdate:Z

    .line 187
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->registerObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V

    .line 189
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->nextUpdate()V

    .line 191
    return-void
.end method

.method public refreshAnomalyIcon(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;>;)V"
        }
    .end annotation

    .line 233
    .local p1, "anomalySparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/settings/fuelgauge/anomaly/Anomaly;>;>;"
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAnomalySparseArray:Landroid/util/SparseArray;

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 238
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->extractKeyFromUid(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 241
    .local v3, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    if-eqz v3, :cond_1

    .line 242
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->shouldShowAnomalyIcon(Z)V

    .line 237
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    return-void
.end method

.method public refreshAppListGroup(Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 35
    .param p1, "statsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "showAllApps"    # Z

    move-object/from16 v0, p0

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    return-void

    .line 252
    :cond_0
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 253
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v3, 0x7f120e32

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    .line 256
    .local v2, "powerProfile":Lcom/android/internal/os/PowerProfile;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v3

    .line 257
    .local v3, "stats":Landroid/os/BatteryStats;
    const-string v4, "screen.full"

    invoke-virtual {v2, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 258
    .local v4, "averagePower":D
    const/4 v6, 0x0

    .line 261
    .local v6, "addedSome":Z
    new-instance v7, Ljava/util/ArrayList;

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    invoke-direct {v0, v7}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 269
    .local v7, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v8

    if-nez v8, :cond_1

    .line 270
    invoke-direct {v0, v7, v3}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->concatHighPowerApp(Ljava/util/List;Landroid/os/BatteryStats;)Ljava/util/List;

    move-result-object v7

    .line 272
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v8, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/settings/fuelgauge/PowerGaugePreference;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 274
    .local v9, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    if-eqz v10, :cond_f

    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    if-eqz v10, :cond_f

    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v10}, Lcom/android/settings/SettingsActivity;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 275
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-wide/from16 v26, v4

    goto/16 :goto_a

    .line 277
    :cond_2
    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v10}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getDataList()Ljava/util/List;

    move-result-object v10

    .line 278
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    const/4 v11, 0x0

    move v12, v11

    .local v12, "i":I
    :goto_0
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 279
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 280
    .local v13, "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    iget v14, v13, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v13    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 282
    .end local v12    # "i":I
    :cond_3
    iget-object v12, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    const v13, 0x7f120d4f

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 286
    .local v12, "uninstalled":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3, v11}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v13

    move/from16 v21, v13

    goto :goto_1

    :cond_4
    move/from16 v21, v11

    .line 288
    .local v21, "dischargeAmount":I
    :goto_1
    iget-object v13, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {v0, v13}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 289
    iget-object v13, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v13, v11}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 291
    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    cmpl-double v13, v4, v13

    if-gez v13, :cond_5

    .line 372
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-wide/from16 v26, v4

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    goto/16 :goto_9

    .line 296
    :cond_5
    if-eqz p2, :cond_6

    const-wide/16 v14, 0x0

    .line 297
    :goto_2
    move-wide/from16 v19, v14

    goto :goto_3

    :cond_6
    iget-object v14, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v14, v7}, Lcom/android/settings/fuelgauge/BatteryUtils;->removeHiddenBatterySippers(Ljava/util/List;)D

    move-result-wide v14

    goto :goto_2

    .line 298
    .local v19, "hiddenPowerMah":D
    :goto_3
    iget-object v14, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v14, v7}, Lcom/android/settings/fuelgauge/BatteryUtils;->sortUsageList(Ljava/util/List;)V

    .line 300
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    .line 301
    .local v15, "numSippers":I
    move/from16 v22, v6

    move v6, v11

    .local v6, "i":I
    .local v22, "addedSome":Z
    :goto_4
    if-ge v6, v15, :cond_d

    .line 302
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatterySipper;

    .line 304
    .local v14, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v23, v12

    iget-wide v11, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .end local v12    # "uninstalled":Ljava/lang/String;
    .local v23, "uninstalled":Ljava/lang/String;
    const-wide v16, 0x40ac200000000000L    # 3600.0

    mul-double v11, v11, v16

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    cmpg-double v11, v11, v16

    if-gez v11, :cond_7

    invoke-virtual {v14}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 305
    nop

    .line 301
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-wide/from16 v26, v4

    move-object/from16 v28, v10

    move v1, v15

    goto :goto_5

    .line 308
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v11

    .line 311
    .local v11, "totalPower":D
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    iget-wide v2, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .end local v2    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v3    # "stats":Landroid/os/BatteryStats;
    .local v24, "powerProfile":Lcom/android/internal/os/PowerProfile;
    .local v25, "stats":Landroid/os/BatteryStats;
    move-wide/from16 v26, v4

    move-object v4, v14

    move-object v14, v1

    .end local v14    # "sipper":Lcom/android/internal/os/BatterySipper;
    .local v4, "sipper":Lcom/android/internal/os/BatterySipper;
    .local v26, "averagePower":D
    move v1, v15

    move-wide v15, v2

    .end local v15    # "numSippers":I
    .local v1, "numSippers":I
    move-wide/from16 v17, v11

    invoke-virtual/range {v14 .. v21}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v2

    .line 316
    .local v2, "percentOfTotal":D
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    move-object/from16 v28, v10

    move-wide/from16 v29, v11

    add-double v10, v2, v14

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .end local v11    # "totalPower":D
    .local v28, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .local v29, "totalPower":D
    double-to-int v5, v10

    const/4 v10, 0x1

    if-ge v5, v10, :cond_8

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 317
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 321
    :cond_8
    add-double/2addr v14, v2

    double-to-int v5, v14

    if-ge v5, v10, :cond_9

    .line 322
    goto :goto_5

    .line 324
    :cond_9
    invoke-virtual {v0, v4}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 325
    nop

    .line 301
    .end local v1    # "numSippers":I
    .end local v24    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v25    # "stats":Landroid/os/BatteryStats;
    .end local v26    # "averagePower":D
    .end local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .end local v29    # "totalPower":D
    .local v2, "powerProfile":Lcom/android/internal/os/PowerProfile;
    .restart local v3    # "stats":Landroid/os/BatteryStats;
    .local v4, "averagePower":D
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .restart local v15    # "numSippers":I
    :goto_5
    move/from16 v31, v1

    const/4 v10, 0x0

    .end local v2    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v3    # "stats":Landroid/os/BatteryStats;
    .end local v4    # "averagePower":D
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .end local v15    # "numSippers":I
    .restart local v1    # "numSippers":I
    .restart local v24    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .restart local v25    # "stats":Landroid/os/BatteryStats;
    .restart local v26    # "averagePower":D
    .restart local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    goto/16 :goto_8

    .line 327
    .local v2, "percentOfTotal":D
    .local v4, "sipper":Lcom/android/internal/os/BatterySipper;
    .restart local v29    # "totalPower":D
    :cond_a
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-direct {v5, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 328
    .local v5, "userHandle":Landroid/os/UserHandle;
    new-instance v11, Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v12, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v14, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-direct {v11, v12, v14, v15, v4}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 330
    .local v11, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    iget-object v12, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14, v5}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 332
    .local v12, "badgedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v14, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 333
    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v15

    .line 332
    invoke-virtual {v14, v15, v5}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 336
    .local v14, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {v0, v4}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->extractKeyFromSipper(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v15

    .line 337
    .local v15, "key":Ljava/lang/String;
    invoke-direct {v0, v15}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    check-cast v16, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 338
    .local v16, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    if-nez v16, :cond_b

    .line 339
    new-instance v10, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    move/from16 v31, v1

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    .end local v1    # "numSippers":I
    .local v31, "numSippers":I
    invoke-direct {v10, v1, v12, v14, v11}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    move-object v1, v10

    .line 341
    .end local v16    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .local v1, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v1, v15}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    goto :goto_6

    .line 343
    .end local v31    # "numSippers":I
    .local v1, "numSippers":I
    .restart local v16    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    :cond_b
    move/from16 v31, v1

    move-object/from16 v1, v16

    .end local v16    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .local v1, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .restart local v31    # "numSippers":I
    :goto_6
    iput-wide v2, v4, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 344
    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v1, v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 346
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    .line 347
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->shouldShowAnomalyIcon(Z)V

    .line 349
    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mForceCloseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    move-wide/from16 v32, v2

    iget-wide v2, v4, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .end local v2    # "percentOfTotal":D
    .local v32, "percentOfTotal":D
    const-wide/16 v16, 0x0

    cmp-long v2, v2, v16

    if-nez v2, :cond_c

    iget-object v2, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v2, v3, :cond_c

    .line 353
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v3, v4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v34, v5

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v5, v3, v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v2

    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .local v34, "userHandle":Landroid/os/UserHandle;
    iput-wide v2, v4, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    goto :goto_7

    .line 359
    .end local v34    # "userHandle":Landroid/os/UserHandle;
    .restart local v5    # "userHandle":Landroid/os/UserHandle;
    :cond_c
    move-object/from16 v34, v5

    const/4 v10, 0x0

    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .restart local v34    # "userHandle":Landroid/os/UserHandle;
    :goto_7
    const/16 v22, 0x1

    .line 360
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 361
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedCount()I

    .line 301
    .end local v1    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v4    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v11    # "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    .end local v12    # "badgedIcon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "contentDescription":Ljava/lang/CharSequence;
    .end local v15    # "key":Ljava/lang/String;
    .end local v29    # "totalPower":D
    .end local v32    # "percentOfTotal":D
    .end local v34    # "userHandle":Landroid/os/UserHandle;
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move v11, v10

    move-object/from16 v12, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-wide/from16 v4, v26

    move-object/from16 v10, v28

    move/from16 v15, v31

    move-object/from16 v1, p1

    goto/16 :goto_4

    .line 369
    .end local v6    # "i":I
    .end local v23    # "uninstalled":Ljava/lang/String;
    .end local v24    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v25    # "stats":Landroid/os/BatteryStats;
    .end local v26    # "averagePower":D
    .end local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .end local v31    # "numSippers":I
    .local v2, "powerProfile":Lcom/android/internal/os/PowerProfile;
    .restart local v3    # "stats":Landroid/os/BatteryStats;
    .local v4, "averagePower":D
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .local v12, "uninstalled":Ljava/lang/String;
    .local v15, "numSippers":I
    :cond_d
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-wide/from16 v26, v4

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move/from16 v31, v15

    .end local v2    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v3    # "stats":Landroid/os/BatteryStats;
    .end local v4    # "averagePower":D
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .end local v12    # "uninstalled":Ljava/lang/String;
    .end local v15    # "numSippers":I
    .restart local v23    # "uninstalled":Ljava/lang/String;
    .restart local v24    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .restart local v25    # "stats":Landroid/os/BatteryStats;
    .restart local v26    # "averagePower":D
    .restart local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .restart local v31    # "numSippers":I
    invoke-direct {v0, v8}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->setPowerState(Ljava/util/Map;)V

    .line 372
    .end local v19    # "hiddenPowerMah":D
    .end local v31    # "numSippers":I
    move/from16 v6, v22

    .end local v22    # "addedSome":Z
    .local v6, "addedSome":Z
    :goto_9
    if-nez v6, :cond_e

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->addNotAvailableMessage()V

    .line 375
    :cond_e
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 377
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 378
    return-void

    .line 275
    .end local v21    # "dischargeAmount":I
    .end local v23    # "uninstalled":Ljava/lang/String;
    .end local v24    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v25    # "stats":Landroid/os/BatteryStats;
    .end local v26    # "averagePower":D
    .end local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .restart local v2    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .restart local v3    # "stats":Landroid/os/BatteryStats;
    .restart local v4    # "averagePower":D
    :cond_f
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-wide/from16 v26, v4

    .end local v2    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v3    # "stats":Landroid/os/BatteryStats;
    .end local v4    # "averagePower":D
    .restart local v24    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .restart local v25    # "stats":Landroid/os/BatteryStats;
    .restart local v26    # "averagePower":D
    :goto_a
    return-void
.end method

.method setUsageSummary(Landroid/support/v7/preference/Preference;Lcom/android/internal/os/BatterySipper;)V
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "sipper"    # Lcom/android/internal/os/BatterySipper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 469
    iget-wide v0, p2, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 470
    .local v0, "usageTimeMs":J
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 471
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mContext:Landroid/content/Context;

    long-to-double v3, v0

    .line 472
    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v2

    .line 473
    .local v2, "timeSequence":Ljava/lang/CharSequence;
    nop

    .line 474
    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v3, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f12026a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 475
    :cond_1
    :goto_0
    nop

    .line 473
    move-object v3, v2

    :goto_1
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    .end local v2    # "timeSequence":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 2
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 484
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
