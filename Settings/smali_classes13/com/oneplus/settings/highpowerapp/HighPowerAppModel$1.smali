.class Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$1;
.super Ljava/lang/Object;
.source "HighPowerAppModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$1;->this$0:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$1;->this$0:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-static {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->access$000(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V

    .line 54
    return-void
.end method