.class public Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Backend"
.end annotation


# static fields
.field static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 384
    const-string v0, "notification"

    .line 385
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 384
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighPriority(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public getLedDisabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 450
    :try_start_0
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->isNotificationLedEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OPNotificationAppList"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    const/4 v1, 0x0

    return v1
.end method

.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 399
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .local v1, "enabled":Z
    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 401
    .end local v1    # "enabled":Z
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OPNotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    return v0
.end method

.method public getSensitive(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method public setHighPriority(Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "highPriority"    # Z

    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public setLedDisabled(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "ledDisabled"    # Z

    .line 459
    :try_start_0
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setNotificationLedStatus(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    const/4 v0, 0x1

    return v0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OPNotificationAppList"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    const/4 v1, 0x0

    return v1
.end method

.method public setNotificationsBanned(Ljava/lang/String;IZ)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "banned"    # Z

    .line 389
    :try_start_0
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    xor-int/lit8 v1, p3, 0x1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    const/4 v0, 0x1

    return v0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OPNotificationAppList"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    const/4 v1, 0x0

    return v1
.end method

.method public setSensitive(Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "sensitive"    # Z

    .line 441
    const/4 v0, 0x1

    return v0
.end method
