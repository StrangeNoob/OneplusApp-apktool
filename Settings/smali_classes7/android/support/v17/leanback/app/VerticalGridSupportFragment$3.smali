.class Landroid/support/v17/leanback/app/VerticalGridSupportFragment$3;
.super Ljava/lang/Object;
.source "VerticalGridSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnChildLaidOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/VerticalGridSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    .line 128
    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildLaidOut(Landroid/view/ViewGroup;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 131
    if-nez p3, :cond_0

    .line 132
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->showOrHideTitle()V

    .line 134
    :cond_0
    return-void
.end method
