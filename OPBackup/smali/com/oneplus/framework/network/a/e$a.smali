.class Lcom/oneplus/framework/network/a/e$a;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/framework/network/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/oneplus/framework/network/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/oneplus/framework/network/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/framework/network/a/e;-><init>(Lcom/oneplus/framework/network/a/e;)V

    sput-object v0, Lcom/oneplus/framework/network/a/e$a;->a:Lcom/oneplus/framework/network/a/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/oneplus/framework/network/a/e;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/oneplus/framework/network/a/e$a;->a:Lcom/oneplus/framework/network/a/e;

    return-object v0
.end method
