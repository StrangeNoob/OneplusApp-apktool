.class Lcom/oneplus/lib/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$2;->a:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 691
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$2;->a:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->a(Lcom/oneplus/lib/widget/NumberPicker;)V

    .line 692
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$2;->a:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->b(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/oneplus/a/b$g;->increment:I

    if-ne v0, v1, :cond_0

    .line 694
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$2;->a:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v2, v4, v5}, Lcom/oneplus/lib/widget/NumberPicker;->a(Lcom/oneplus/lib/widget/NumberPicker;ZJ)V

    .line 698
    :goto_0
    return v2

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$2;->a:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/oneplus/lib/widget/NumberPicker;->a(Lcom/oneplus/lib/widget/NumberPicker;ZJ)V

    goto :goto_0
.end method
