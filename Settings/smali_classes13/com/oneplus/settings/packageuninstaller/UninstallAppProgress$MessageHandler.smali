.class Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$MessageHandler;
.super Landroid/os/Handler;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;)V
    .locals 1
    .param p1, "activity"    # Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$MessageHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 89
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$MessageHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    .line 94
    .local v0, "activity":Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;
    if-eqz v0, :cond_0

    .line 95
    invoke-static {v0, p1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->access$000(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;Landroid/os/Message;)V

    .line 97
    :cond_0
    return-void
.end method
