.class final Lcom/oneplus/lib/app/appcompat/n$b;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/lib/app/appcompat/n;

.field private b:Lcom/oneplus/lib/app/appcompat/al;

.field private c:Z

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/n;Lcom/oneplus/lib/app/appcompat/al;)V
    .locals 1
    .param p2    # Lcom/oneplus/lib/app/appcompat/al;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 316
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/n$b;->a:Lcom/oneplus/lib/app/appcompat/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/n$b;->b:Lcom/oneplus/lib/app/appcompat/al;

    .line 318
    invoke-virtual {p2}, Lcom/oneplus/lib/app/appcompat/al;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->c:Z

    .line 319
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->b:Lcom/oneplus/lib/app/appcompat/al;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/al;->a()Z

    move-result v0

    .line 328
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/n$b;->c:Z

    if-eq v0, v1, :cond_0

    .line 329
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->c:Z

    .line 330
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->a:Lcom/oneplus/lib/app/appcompat/n;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/n;->k()Z

    .line 332
    :cond_0
    return-void
.end method

.method final c()V
    .locals 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/n$b;->d()V

    .line 340
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/oneplus/lib/app/appcompat/n$b$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/n$b$1;-><init>(Lcom/oneplus/lib/app/appcompat/n$b;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->d:Landroid/content/BroadcastReceiver;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->e:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->e:Landroid/content/IntentFilter;

    .line 353
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->e:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->e:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->e:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->a:Lcom/oneplus/lib/app/appcompat/n;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/n;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/n$b;->d:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/n$b;->e:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    return-void
.end method

.method final d()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->a:Lcom/oneplus/lib/app/appcompat/n;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/n;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/n$b;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/n$b;->d:Landroid/content/BroadcastReceiver;

    .line 365
    :cond_0
    return-void
.end method
