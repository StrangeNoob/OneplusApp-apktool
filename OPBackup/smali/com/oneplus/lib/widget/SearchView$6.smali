.class Lcom/oneplus/lib/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/lib/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/SearchView;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView$6;->a:Lcom/oneplus/lib/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView$6;->a:Lcom/oneplus/lib/widget/SearchView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/SearchView;->i:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView$6;->a:Lcom/oneplus/lib/widget/SearchView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/SearchView;->i:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Lcom/oneplus/lib/widget/s;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView$6;->a:Lcom/oneplus/lib/widget/SearchView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/SearchView;->i:Landroid/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 176
    :cond_0
    return-void
.end method
