.class Landroid/support/v17/leanback/app/BrowseSupportFragment$1;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseSupportFragment;
    .param p2, "name"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setEntranceTransitionStartState()V

    .line 100
    return-void
.end method
