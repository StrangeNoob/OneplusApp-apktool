.class Lcom/oneplus/lib/app/OPAlertController$a$3;
.super Ljava/lang/Object;
.source "OPAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPAlertController$a;->b(Lcom/oneplus/lib/app/OPAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/lib/app/OPAlertController;

.field final synthetic b:Lcom/oneplus/lib/app/OPAlertController$a;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController$a;Lcom/oneplus/lib/app/OPAlertController;)V
    .locals 0

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$a$3;->b:Lcom/oneplus/lib/app/OPAlertController$a;

    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController$a$3;->a:Lcom/oneplus/lib/app/OPAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$a$3;->b:Lcom/oneplus/lib/app/OPAlertController$a;

    iget-object v0, v0, Lcom/oneplus/lib/app/OPAlertController$a;->u:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$a$3;->a:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->g(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1219
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$a$3;->b:Lcom/oneplus/lib/app/OPAlertController$a;

    iget-boolean v0, v0, Lcom/oneplus/lib/app/OPAlertController$a;->E:Z

    if-nez v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$a$3;->a:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->g(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1222
    :cond_0
    return-void
.end method
