.class Landroid/support/v17/leanback/widget/TitleHelper$3;
.super Ljava/lang/Object;
.source "TitleHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/TitleHelper;->createTransitions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/TitleHelper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/TitleHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/TitleHelper;

    .line 79
    iput-object p1, p0, Landroid/support/v17/leanback/widget/TitleHelper$3;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper$3;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void
.end method
