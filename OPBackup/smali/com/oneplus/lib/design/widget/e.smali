.class public final Lcom/oneplus/lib/design/widget/e;
.super Ljava/lang/Object;
.source "OPDrawableManager.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/e$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/oneplus/lib/design/widget/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/oneplus/lib/design/widget/e$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/oneplus/lib/design/widget/e$a;-><init>(I)V

    sput-object v0, Lcom/oneplus/lib/design/widget/e;->a:Lcom/oneplus/lib/design/widget/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/oneplus/lib/design/widget/e;->a:Lcom/oneplus/lib/design/widget/e$a;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/design/widget/e$a;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 63
    sget-object v1, Lcom/oneplus/lib/design/widget/e;->a:Lcom/oneplus/lib/design/widget/e$a;

    invoke-virtual {v1, p0, p1, v0}, Lcom/oneplus/lib/design/widget/e$a;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 66
    :cond_0
    return-object v0
.end method
