.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;->a:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;->a:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->k:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$e;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;->a:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->k:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$e;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$e;->a()V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;->a:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->a(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Z)Z

    .line 386
    return-void
.end method
