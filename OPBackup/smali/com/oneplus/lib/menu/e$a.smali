.class Lcom/oneplus/lib/menu/e$a;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/lib/menu/e;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/menu/e;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/oneplus/lib/menu/e$a;->a:Lcom/oneplus/lib/menu/e;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/menu/e$a;->b:I

    .line 232
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/e$a;->a()V

    .line 233
    return-void
.end method


# virtual methods
.method public a(I)Lcom/oneplus/lib/menu/k;
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oneplus/lib/menu/e$a;->a:Lcom/oneplus/lib/menu/e;

    iget-object v0, v0, Lcom/oneplus/lib/menu/e;->c:Lcom/oneplus/lib/menu/g;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/g;->m()Ljava/util/ArrayList;

    move-result-object v1

    .line 248
    iget-object v0, p0, Lcom/oneplus/lib/menu/e$a;->a:Lcom/oneplus/lib/menu/e;

    iget v0, v0, Lcom/oneplus/lib/menu/e;->e:I

    add-int/2addr v0, p1

    .line 249
    iget v2, p0, Lcom/oneplus/lib/menu/e$a;->b:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/oneplus/lib/menu/e$a;->b:I

    if-lt v0, v2, :cond_0

    .line 250
    add-int/lit8 v0, v0, 0x1

    .line 252
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/k;

    return-object v0
.end method

.method a()V
    .locals 5

    .prologue
    .line 274
    iget-object v0, p0, Lcom/oneplus/lib/menu/e$a;->a:Lcom/oneplus/lib/menu/e;

    iget-object v0, v0, Lcom/oneplus/lib/menu/e;->c:Lcom/oneplus/lib/menu/g;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/g;->s()Lcom/oneplus/lib/menu/k;

    move-result-object v2

    .line 275
    if-eqz v2, :cond_1

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/menu/e$a;->a:Lcom/oneplus/lib/menu/e;

    iget-object v0, v0, Lcom/oneplus/lib/menu/e;->c:Lcom/oneplus/lib/menu/g;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/g;->m()Ljava/util/ArrayList;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 278
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 279
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/k;

    .line 280
    if-ne v0, v2, :cond_0

    .line 281
    iput v1, p0, Lcom/oneplus/lib/menu/e$a;->b:I

    .line 287
    :goto_1
    return-void

    .line 278
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/menu/e$a;->b:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/oneplus/lib/menu/e$a;->a:Lcom/oneplus/lib/menu/e;

    iget-object v0, v0, Lcom/oneplus/lib/menu/e;->c:Lcom/oneplus/lib/menu/g;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/g;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/menu/e$a;->a:Lcom/oneplus/lib/menu/e;

    iget v1, v1, Lcom/oneplus/lib/menu/e;->e:I

    sub-int/2addr v0, v1

    .line 239
    iget v1, p0, Lcom/oneplus/lib/menu/e$a;->b:I

    if-gez v1, :cond_0

    .line 242
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/e$a;->a(I)Lcom/oneplus/lib/menu/k;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 259
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 264
    if-nez p2, :cond_0

    .line 265
    iget-object v0, p0, Lcom/oneplus/lib/menu/e$a;->a:Lcom/oneplus/lib/menu/e;

    iget-object v0, v0, Lcom/oneplus/lib/menu/e;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/oneplus/lib/menu/e$a;->a:Lcom/oneplus/lib/menu/e;

    iget v1, v1, Lcom/oneplus/lib/menu/e;->g:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 268
    check-cast v0, Lcom/oneplus/lib/menu/o$a;

    .line 269
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/e$a;->a(I)Lcom/oneplus/lib/menu/k;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Lcom/oneplus/lib/menu/o$a;->a(Lcom/oneplus/lib/menu/k;I)V

    .line 270
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/e$a;->a()V

    .line 292
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 293
    return-void
.end method
