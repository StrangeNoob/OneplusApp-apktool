.class public Lcom/b/a/h/b/k;
.super Ljava/lang/Object;
.source "ViewTransition.java"

# interfaces
.implements Lcom/b/a/h/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/h/b/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/h/b/f",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/h/b/k$a;


# direct methods
.method constructor <init>(Lcom/b/a/h/b/k$a;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/b/a/h/b/k;->a:Lcom/b/a/h/b/k$a;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/b/a/h/b/f$a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/b/a/h/b/f$a;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 39
    invoke-interface {p2}, Lcom/b/a/h/b/f$a;->j()Landroid/view/View;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 42
    iget-object v1, p0, Lcom/b/a/h/b/k;->a:Lcom/b/a/h/b/k$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/b/a/h/b/k$a;->a(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
