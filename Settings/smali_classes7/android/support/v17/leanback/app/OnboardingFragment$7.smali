.class Landroid/support/v17/leanback/app/OnboardingFragment$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OnboardingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/OnboardingFragment;->onPageChangedInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/OnboardingFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/OnboardingFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/OnboardingFragment;

    .line 936
    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$7;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 939
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$7;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;->setVisibility(I)V

    .line 940
    return-void
.end method
