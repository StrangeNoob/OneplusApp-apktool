.class Landroid/support/v17/leanback/app/DetailsSupportFragment$2;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "DetailsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/DetailsSupportFragment;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "branchStart"    # Z
    .param p4, "branchEnd"    # Z

    .line 116
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->switchToVideoBeforeVideoSupportFragmentCreated()V

    .line 120
    return-void
.end method
