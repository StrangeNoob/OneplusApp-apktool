.class Landroid/support/v17/leanback/app/OnboardingFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OnboardingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/OnboardingFragment;->startLogoAnimation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/OnboardingFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/OnboardingFragment;

    .line 623
    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$4;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iput-object p2, p0, Landroid/support/v17/leanback/app/OnboardingFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 626
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$4;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$4;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    .line 628
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$4;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/OnboardingFragment;->onLogoAnimationFinished()V

    .line 630
    :cond_0
    return-void
.end method
