.class Lcom/oneplus/lib/design/widget/i;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/i$b;,
        Lcom/oneplus/lib/design/widget/i$a;
    }
.end annotation


# static fields
.field static final a:I = 0x0

.field private static final b:I = 0x5dc

.field private static final c:I = 0xabe

.field private static d:Lcom/oneplus/lib/design/widget/i;


# instance fields
.field private final e:Ljava/lang/Object;

.field private final f:Landroid/os/Handler;

.field private g:Lcom/oneplus/lib/design/widget/i$b;

.field private h:Lcom/oneplus/lib/design/widget/i$b;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/i;->e:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/oneplus/lib/design/widget/i$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/design/widget/i$1;-><init>(Lcom/oneplus/lib/design/widget/i;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/i;->f:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static a()Lcom/oneplus/lib/design/widget/i;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/oneplus/lib/design/widget/i;->d:Lcom/oneplus/lib/design/widget/i;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/oneplus/lib/design/widget/i;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/i;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/i;->d:Lcom/oneplus/lib/design/widget/i;

    .line 41
    :cond_0
    sget-object v0, Lcom/oneplus/lib/design/widget/i;->d:Lcom/oneplus/lib/design/widget/i;

    return-object v0
.end method

.method private a(Lcom/oneplus/lib/design/widget/i$b;I)Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p1, Lcom/oneplus/lib/design/widget/i$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/i$a;

    .line 202
    if-eqz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/i;->f:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    invoke-interface {v0, p2}, Lcom/oneplus/lib/design/widget/i$a;->a(I)V

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->h:Lcom/oneplus/lib/design/widget/i$b;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->h:Lcom/oneplus/lib/design/widget/i$b;

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    .line 188
    iput-object v1, p0, Lcom/oneplus/lib/design/widget/i;->h:Lcom/oneplus/lib/design/widget/i$b;

    .line 190
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/i$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/i$a;

    .line 191
    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v0}, Lcom/oneplus/lib/design/widget/i$a;->a()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iput-object v1, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    goto :goto_0
.end method

.method private b(Lcom/oneplus/lib/design/widget/i$b;)V
    .locals 6

    .prologue
    .line 220
    iget v0, p1, Lcom/oneplus/lib/design/widget/i$b;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 225
    :cond_0
    const/16 v0, 0xabe

    .line 226
    iget v1, p1, Lcom/oneplus/lib/design/widget/i$b;->b:I

    if-lez v1, :cond_2

    .line 227
    iget v0, p1, Lcom/oneplus/lib/design/widget/i$b;->b:I

    .line 231
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/i;->f:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/i;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/i;->f:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 228
    :cond_2
    iget v1, p1, Lcom/oneplus/lib/design/widget/i$b;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 229
    const/16 v0, 0x5dc

    goto :goto_1
.end method

.method private g(Lcom/oneplus/lib/design/widget/i$a;)Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/i$b;->a(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Lcom/oneplus/lib/design/widget/i$a;)Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->h:Lcom/oneplus/lib/design/widget/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->h:Lcom/oneplus/lib/design/widget/i$b;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/i$b;->a(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILcom/oneplus/lib/design/widget/i$a;)V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/i;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/design/widget/i;->g(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    iput p1, v0, Lcom/oneplus/lib/design/widget/i$b;->b:I

    .line 78
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/i;->b(Lcom/oneplus/lib/design/widget/i$b;)V

    .line 80
    monitor-exit v1

    .line 100
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/design/widget/i;->h(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->h:Lcom/oneplus/lib/design/widget/i$b;

    iput p1, v0, Lcom/oneplus/lib/design/widget/i$b;->b:I

    .line 89
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/design/widget/i;->a(Lcom/oneplus/lib/design/widget/i$b;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    monitor-exit v1

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 86
    :cond_1
    :try_start_1
    new-instance v0, Lcom/oneplus/lib/design/widget/i$b;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/lib/design/widget/i$b;-><init>(ILcom/oneplus/lib/design/widget/i$a;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/i;->h:Lcom/oneplus/lib/design/widget/i$b;

    goto :goto_1

    .line 95
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    .line 97
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/i;->b()V

    .line 99
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/oneplus/lib/design/widget/i$a;)V
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/i;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/i;->g(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    .line 121
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->h:Lcom/oneplus/lib/design/widget/i$b;

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/i;->b()V

    .line 125
    :cond_0
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/oneplus/lib/design/widget/i$a;I)V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/i;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/i;->g(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/design/widget/i;->a(Lcom/oneplus/lib/design/widget/i$b;I)Z

    .line 109
    :cond_0
    :goto_0
    monitor-exit v1

    .line 110
    return-void

    .line 106
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/i;->h(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->h:Lcom/oneplus/lib/design/widget/i$b;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/design/widget/i;->a(Lcom/oneplus/lib/design/widget/i$b;I)Z

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/oneplus/lib/design/widget/i$b;)V
    .locals 2

    .prologue
    .line 236
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/i;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->h:Lcom/oneplus/lib/design/widget/i$b;

    if-ne v0, p1, :cond_1

    .line 238
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/i;->a(Lcom/oneplus/lib/design/widget/i$b;I)Z

    .line 240
    :cond_1
    monitor-exit v1

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/oneplus/lib/design/widget/i$a;)V
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/i;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/i;->g(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/i;->b(Lcom/oneplus/lib/design/widget/i$b;)V

    .line 137
    :cond_0
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/oneplus/lib/design/widget/i$a;)V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/i;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/i;->g(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    iget-boolean v0, v0, Lcom/oneplus/lib/design/widget/i$b;->c:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/lib/design/widget/i$b;->c:Z

    .line 144
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 146
    :cond_0
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Lcom/oneplus/lib/design/widget/i$a;)V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/i;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/i;->g(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    iget-boolean v0, v0, Lcom/oneplus/lib/design/widget/i$b;->c:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oneplus/lib/design/widget/i$b;->c:Z

    .line 153
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/i;->g:Lcom/oneplus/lib/design/widget/i$b;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/i;->b(Lcom/oneplus/lib/design/widget/i$b;)V

    .line 155
    :cond_0
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Lcom/oneplus/lib/design/widget/i$a;)Z
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/i;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/i;->g(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f(Lcom/oneplus/lib/design/widget/i$a;)Z
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/i;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/i;->g(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/i;->h(Lcom/oneplus/lib/design/widget/i$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
