.class public abstract Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
.super Landroid/animation/ValueAnimator;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PendingStartAnimator"
.end annotation


# instance fields
.field protected hasStarted:Z

.field protected predicate:Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;

.field final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/widget/DotsPageIndicator;
    .param p2, "predicate"    # Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;

    .line 736
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    .line 737
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 738
    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->predicate:Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;

    .line 739
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->hasStarted:Z

    .line 740
    return-void
.end method


# virtual methods
.method public startIfNecessary(F)V
    .locals 1
    .param p1, "currentValue"    # F

    .line 743
    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->hasStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->predicate:Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;->shouldStart(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->start()V

    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->hasStarted:Z

    .line 747
    :cond_0
    return-void
.end method
