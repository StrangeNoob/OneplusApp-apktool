.class Lcom/airbnb/lottie/LottieDrawable$2;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$resetProgress:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/lottie/LottieDrawable;

    .line 384
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$2;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieDrawable$2;->val$resetProgress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 386
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$2;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable$2;->val$resetProgress:Z

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->access$200(Lcom/airbnb/lottie/LottieDrawable;Z)V

    .line 387
    return-void
.end method
