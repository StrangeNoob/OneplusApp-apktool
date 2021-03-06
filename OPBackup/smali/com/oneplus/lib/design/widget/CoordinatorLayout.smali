.class public Lcom/oneplus/lib/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$c;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$a;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$g;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "CoordinatorLayout"

.field static final b:Ljava/lang/String;

.field static final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final e:I = 0x0

.field static final f:I = 0x1

.field static final g:I = 0x2

.field static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:I = 0x0

.field private static final k:I = 0x1


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

.field private D:Z

.field private E:Landroid/support/v4/view/WindowInsetsCompat;

.field private F:Z

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Landroid/support/v4/view/OnApplyWindowInsetsListener;

.field private final I:Landroid/support/v4/view/NestedScrollingParentHelper;

.field i:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/oneplus/lib/design/widget/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/design/widget/c",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/graphics/Rect;

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/graphics/Rect;

.field private final s:Landroid/graphics/Rect;

.field private final t:Landroid/graphics/Rect;

.field private final u:[I

.field private v:Landroid/graphics/Paint;

.field private w:Z

.field private x:Z

.field private y:[I

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 115
    const-class v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->b:Ljava/lang/String;

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 124
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$g;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$g;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->h:Ljava/util/Comparator;

    .line 130
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->c:[Ljava/lang/Class;

    .line 135
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->d:Ljava/lang/ThreadLocal;

    return-void

    :cond_0
    move-object v0, v1

    .line 116
    goto :goto_0

    .line 126
    :cond_1
    sput-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->h:Ljava/util/Comparator;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    .line 152
    new-instance v1, Lcom/oneplus/lib/design/widget/c;

    invoke-direct {v1}, Lcom/oneplus/lib/design/widget/c;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->m:Lcom/oneplus/lib/design/widget/c;

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->n:Ljava/util/List;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->o:Ljava/util/List;

    .line 156
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->p:Landroid/graphics/Rect;

    .line 157
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->q:Landroid/graphics/Rect;

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->r:Landroid/graphics/Rect;

    .line 159
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->s:Landroid/graphics/Rect;

    .line 160
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->t:Landroid/graphics/Rect;

    .line 161
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->u:[I

    .line 184
    new-instance v1, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v1, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->I:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 200
    sget-object v1, Lcom/oneplus/a/b$m;->OpCoordinatorLayout:[I

    sget v2, Lcom/oneplus/a/b$l;->Widget_Design_CoordinatorLayout:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 202
    sget v2, Lcom/oneplus/a/b$m;->OpCoordinatorLayout_opKeylines:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 203
    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 205
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->y:[I

    .line 206
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 207
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->y:[I

    array-length v3, v3

    .line 208
    :goto_0
    if-ge v0, v3, :cond_0

    .line 209
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->y:[I

    aget v5, v4, v0

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    aput v5, v4, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    sget v0, Lcom/oneplus/a/b$m;->OpCoordinatorLayout_opStatusBarBackground:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->g()V

    .line 216
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$c;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$c;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 217
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .locals 4

    .prologue
    const/16 v2, 0x2e

    .line 573
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x0

    .line 605
    :goto_0
    return-object v0

    .line 578
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 592
    :cond_1
    :goto_1
    :try_start_0
    sget-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 593
    if-nez v0, :cond_4

    .line 594
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 595
    sget-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v1, v0

    .line 597
    :goto_2
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 598
    if-nez v0, :cond_2

    .line 599
    const/4 v0, 0x1

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 599
    invoke-static {p2, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 601
    sget-object v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->c:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 602
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 603
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 586
    sget-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not inflate Behavior subclass "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method private a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;II)V
    .locals 5

    .prologue
    .line 936
    iget v0, p5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->c:I

    .line 937
    invoke-static {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->e(I)I

    move-result v0

    .line 936
    invoke-static {v0, p2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 938
    iget v1, p5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->d:I

    .line 939
    invoke-static {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->c(I)I

    move-result v1

    .line 938
    invoke-static {v1, p2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 942
    and-int/lit8 v2, v0, 0x7

    .line 943
    and-int/lit8 v3, v0, 0x70

    .line 944
    and-int/lit8 v0, v1, 0x7

    .line 945
    and-int/lit8 v4, v1, 0x70

    .line 953
    sparse-switch v0, :sswitch_data_0

    .line 956
    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 966
    :goto_0
    sparse-switch v4, :sswitch_data_1

    .line 969
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 980
    :goto_1
    sparse-switch v2, :sswitch_data_2

    .line 983
    sub-int/2addr v1, p6

    .line 993
    :goto_2
    :sswitch_0
    sparse-switch v3, :sswitch_data_3

    .line 996
    sub-int/2addr v0, p7

    .line 1006
    :goto_3
    :sswitch_1
    add-int v2, v1, p6

    add-int v3, v0, p7

    invoke-virtual {p4, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1007
    return-void

    .line 959
    :sswitch_2
    iget v1, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 962
    :sswitch_3
    iget v0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    goto :goto_0

    .line 972
    :sswitch_4
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 975
    :sswitch_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    goto :goto_1

    .line 989
    :sswitch_6
    div-int/lit8 v2, p6, 0x2

    sub-int/2addr v1, v2

    goto :goto_2

    .line 1002
    :sswitch_7
    div-int/lit8 v2, p7, 0x2

    sub-int/2addr v0, v2

    goto :goto_3

    .line 953
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    .line 966
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 980
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 993
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1325
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1330
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->t:Landroid/graphics/Rect;

    .line 1331
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1332
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1337
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1338
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1339
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->r:Landroid/graphics/Rect;

    .line 1340
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 1342
    if-eqz v4, :cond_2

    invoke-virtual {v4, p0, p1, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1344
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rect should be within the child\'s bounds. Rect:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1346
    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | Bounds:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1347
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1350
    :cond_2
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1353
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1358
    iget v2, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->h:I

    invoke-static {v2, p3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 1362
    and-int/lit8 v2, v4, 0x30

    const/16 v6, 0x30

    if-ne v2, v6, :cond_8

    .line 1363
    iget v2, v5, Landroid/graphics/Rect;->top:I

    iget v6, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->topMargin:I

    sub-int/2addr v2, v6

    iget v6, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->j:I

    sub-int/2addr v2, v6

    .line 1364
    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_8

    .line 1365
    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int v2, v6, v2

    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->e(Landroid/view/View;I)V

    move v2, v1

    .line 1369
    :goto_1
    and-int/lit8 v6, v4, 0x50

    const/16 v7, 0x50

    if-ne v6, v7, :cond_4

    .line 1370
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget v7, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->j:I

    add-int/2addr v6, v7

    .line 1371
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_4

    .line 1372
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v6, v2

    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->e(Landroid/view/View;I)V

    move v2, v1

    .line 1376
    :cond_4
    if-nez v2, :cond_5

    .line 1377
    invoke-direct {p0, p1, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->e(Landroid/view/View;I)V

    .line 1381
    :cond_5
    and-int/lit8 v2, v4, 0x3

    const/4 v6, 0x3

    if-ne v2, v6, :cond_7

    .line 1382
    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v6, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->leftMargin:I

    sub-int/2addr v2, v6

    iget v6, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->i:I

    sub-int/2addr v2, v6

    .line 1383
    iget v6, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_7

    .line 1384
    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int v2, v6, v2

    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->d(Landroid/view/View;I)V

    move v2, v1

    .line 1388
    :goto_2
    and-int/lit8 v4, v4, 0x5

    const/4 v6, 0x5

    if-ne v4, v6, :cond_6

    .line 1389
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->rightMargin:I

    sub-int/2addr v4, v5

    iget v0, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->i:I

    add-int/2addr v0, v4

    .line 1390
    iget v4, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v4, :cond_6

    .line 1391
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->d(Landroid/view/View;I)V

    move v0, v1

    .line 1395
    :goto_3
    if-nez v0, :cond_0

    .line 1396
    invoke-direct {p0, p1, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->d(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1052
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->p:Landroid/graphics/Rect;

    .line 1053
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->q:Landroid/graphics/Rect;

    .line 1054
    invoke-virtual {p0, p2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1055
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1057
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 1058
    return-void
.end method

.method private a(Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;Landroid/graphics/Rect;II)V
    .locals 5

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    .line 1011
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    .line 1014
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 1016
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->rightMargin:I

    sub-int/2addr v0, v4

    .line 1015
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1014
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1017
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 1019
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p4

    iget v4, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->bottomMargin:I

    sub-int/2addr v1, v4

    .line 1018
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1017
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1021
    add-int v2, v0, p3

    add-int v3, v1, p4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1022
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 397
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    .line 398
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .line 399
    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 400
    if-eqz v2, :cond_0

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v0

    .line 401
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 402
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 400
    goto :goto_1

    .line 405
    :cond_1
    sget-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->h:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 406
    sget-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->h:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 408
    :cond_2
    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)Z
    .locals 21

    .prologue
    .line 411
    const/4 v14, 0x0

    .line 412
    const/4 v13, 0x0

    .line 414
    const/4 v5, 0x0

    .line 416
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v16

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->n:Ljava/util/List;

    move-object/from16 v17, v0

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Ljava/util/List;)V

    .line 422
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    .line 423
    const/4 v4, 0x0

    move v15, v4

    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    .line 424
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/view/View;

    .line 425
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 426
    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v19

    .line 428
    if-nez v14, :cond_0

    if-eqz v13, :cond_1

    :cond_0
    if-eqz v16, :cond_1

    .line 431
    if-eqz v19, :cond_6

    .line 432
    if-nez v5, :cond_5

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 434
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 437
    :goto_1
    packed-switch p2, :pswitch_data_0

    :goto_2
    move v5, v13

    move v6, v14

    .line 423
    :goto_3
    add-int/lit8 v7, v15, 0x1

    move v15, v7

    move v13, v5

    move v14, v6

    move-object v5, v4

    goto :goto_0

    .line 439
    :pswitch_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 442
    :pswitch_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->b(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 449
    :cond_1
    if-nez v14, :cond_2

    if-eqz v19, :cond_2

    .line 450
    packed-switch p2, :pswitch_data_1

    .line 458
    :goto_4
    if-eqz v14, :cond_2

    .line 459
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->z:Landroid/view/View;

    :cond_2
    move v6, v14

    .line 465
    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->e()Z

    move-result v7

    .line 466
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v8

    .line 467
    if-eqz v8, :cond_3

    if-nez v7, :cond_3

    const/4 v4, 0x1

    .line 468
    :goto_5
    if-eqz v8, :cond_4

    if-nez v4, :cond_4

    .line 475
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 477
    return v6

    .line 452
    :pswitch_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_4

    .line 455
    :pswitch_3
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->b(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_4

    .line 467
    :cond_3
    const/4 v4, 0x0

    goto :goto_5

    :cond_4
    move-object/from16 v20, v5

    move v5, v4

    move-object/from16 v4, v20

    goto :goto_3

    :cond_5
    move-object v4, v5

    goto :goto_1

    :cond_6
    move-object v4, v5

    move v6, v14

    move v5, v13

    goto :goto_3

    :cond_7
    move v6, v14

    goto :goto_6

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 450
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 559
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->y:[I

    if-nez v1, :cond_0

    .line 560
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return v0

    .line 564
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->y:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 565
    :cond_1
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->y:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private b(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 799
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    :goto_0
    return-object p1

    .line 803
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    move v2, v0

    move-object v1, p1

    :goto_1
    if-ge v2, v3, :cond_3

    .line 804
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 805
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 807
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 809
    if-eqz v0, :cond_1

    .line 811
    invoke-virtual {v0, p0, v4, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    .line 812
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    move-object p1, v0

    .line 820
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 803
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private b(Landroid/view/View;II)V
    .locals 9

    .prologue
    .line 1072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1073
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->c:I

    .line 1074
    invoke-static {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->d(I)I

    move-result v1

    .line 1073
    invoke-static {v1, p3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 1076
    and-int/lit8 v3, v1, 0x7

    .line 1077
    and-int/lit8 v4, v1, 0x70

    .line 1078
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    .line 1079
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    .line 1080
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1081
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1083
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 1084
    sub-int p2, v5, p2

    .line 1087
    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->b(I)I

    move-result v1

    sub-int v2, v1, v7

    .line 1088
    const/4 v1, 0x0

    .line 1090
    sparse-switch v3, :sswitch_data_0

    .line 1103
    :goto_0
    sparse-switch v4, :sswitch_data_1

    .line 1117
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v3

    iget v4, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->leftMargin:I

    add-int/2addr v3, v4

    .line 1119
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int v4, v5, v4

    sub-int/2addr v4, v7

    iget v5, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->rightMargin:I

    sub-int/2addr v4, v5

    .line 1118
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1117
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1120
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    iget v4, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->topMargin:I

    add-int/2addr v3, v4

    .line 1122
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int v4, v6, v4

    sub-int/2addr v4, v8

    iget v0, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->bottomMargin:I

    sub-int v0, v4, v0

    .line 1121
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1120
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1124
    add-int v1, v2, v7

    add-int v3, v0, v8

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 1125
    return-void

    .line 1096
    :sswitch_0
    add-int/2addr v2, v7

    .line 1097
    goto :goto_0

    .line 1099
    :sswitch_1
    div-int/lit8 v3, v7, 0x2

    add-int/2addr v2, v3

    goto :goto_0

    .line 1109
    :sswitch_2
    add-int/2addr v1, v8

    .line 1110
    goto :goto_1

    .line 1112
    :sswitch_3
    div-int/lit8 v3, v8, 0x2

    add-int/2addr v1, v3

    goto :goto_1

    .line 1090
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1103
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private static c(I)I
    .locals 0

    .prologue
    .line 1163
    if-nez p0, :cond_0

    const p0, 0x800033

    :cond_0
    return p0
.end method

.method private c(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 1135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1136
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->p:Landroid/graphics/Rect;

    .line 1137
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->leftMargin:I

    add-int/2addr v1, v2

    .line 1138
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v4, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->topMargin:I

    add-int/2addr v2, v4

    .line 1139
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->rightMargin:I

    sub-int/2addr v4, v5

    .line 1140
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->bottomMargin:I

    sub-int/2addr v5, v6

    .line 1137
    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1142
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1146
    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 1147
    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 1148
    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 1149
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 1152
    :cond_0
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->q:Landroid/graphics/Rect;

    .line 1153
    iget v0, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->c:I

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->c(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1154
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p2

    .line 1153
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1155
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1156
    return-void
.end method

.method private static d(I)I
    .locals 0

    .prologue
    .line 1171
    if-nez p0, :cond_0

    const p0, 0x800035

    :cond_0
    return p0
.end method

.method private d(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1401
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1402
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->i:I

    if-eq v1, p2, :cond_0

    .line 1403
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->i:I

    sub-int v1, p2, v1

    .line 1404
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1405
    iput p2, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->i:I

    .line 1407
    :cond_0
    return-void
.end method

.method private static e(I)I
    .locals 0

    .prologue
    .line 1179
    if-nez p0, :cond_0

    const/16 p0, 0x11

    :cond_0
    return p0
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 369
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->z:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    .line 371
    if-eqz v8, :cond_0

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 373
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->z:Landroid/view/View;

    invoke-virtual {v8, p0, v1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->b(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 376
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 378
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->z:Landroid/view/View;

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    move v1, v7

    .line 382
    :goto_0
    if-ge v1, v2, :cond_2

    .line 383
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 385
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->f()V

    .line 382
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 387
    :cond_2
    iput-boolean v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->w:Z

    .line 388
    return-void
.end method

.method private e(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1410
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1411
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->j:I

    if-eq v1, p2, :cond_0

    .line 1412
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->j:I

    sub-int v1, p2, v1

    .line 1413
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1414
    iput p2, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->j:I

    .line 1416
    :cond_0
    return-void
.end method

.method private e(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->m:Lcom/oneplus/lib/design/widget/c;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/c;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 634
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 635
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->m:Lcom/oneplus/lib/design/widget/c;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/c;->a()V

    .line 637
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_4

    .line 638
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 640
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    move-result-object v0

    .line 641
    invoke-virtual {v0, p0, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    .line 643
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->m:Lcom/oneplus/lib/design/widget/c;

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/design/widget/c;->a(Ljava/lang/Object;)V

    move v0, v1

    .line 646
    :goto_1
    if-ge v0, v3, :cond_3

    .line 647
    if-ne v0, v2, :cond_1

    .line 646
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 650
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 651
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    move-result-object v6

    .line 652
    invoke-virtual {v6, p0, v5, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 653
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->m:Lcom/oneplus/lib/design/widget/c;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/design/widget/c;->b(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 655
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->m:Lcom/oneplus/lib/design/widget/c;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/design/widget/c;->a(Ljava/lang/Object;)V

    .line 658
    :cond_2
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->m:Lcom/oneplus/lib/design/widget/c;

    invoke-virtual {v6, v4, v5}, Lcom/oneplus/lib/design/widget/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 637
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 664
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->m:Lcom/oneplus/lib/design/widget/c;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 668
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 2962
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 2986
    :goto_0
    return-void

    .line 2966
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2967
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->H:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    if-nez v0, :cond_1

    .line 2968
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$1;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->H:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    .line 2978
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->H:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 2981
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 2984
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v0, p1}, Lcom/oneplus/lib/design/widget/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    .line 348
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->F:Z

    .line 349
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->F:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 352
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->b(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 353
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->requestLayout()V

    .line 355
    :cond_0
    return-object p1

    :cond_1
    move v0, v2

    .line 348
    goto :goto_0

    :cond_2
    move v1, v2

    .line 349
    goto :goto_1
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;
    .locals 2

    .prologue
    .line 1632
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method a(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;
    .locals 6

    .prologue
    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 613
    iget-boolean v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b:Z

    if-nez v1, :cond_2

    .line 614
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 615
    const/4 v1, 0x0

    .line 616
    :goto_0
    if-eqz v2, :cond_0

    const-class v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$a;

    .line 617
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$a;

    if-nez v1, :cond_0

    .line 618
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 620
    if-eqz v2, :cond_1

    .line 622
    :try_start_0
    invoke-interface {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :cond_1
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b:Z

    .line 630
    :cond_2
    return-object v0

    .line 623
    :catch_0
    move-exception v1

    .line 624
    const-string v3, "CoordinatorLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default behavior class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;
    .locals 1

    .prologue
    .line 1637
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    if-eqz v0, :cond_0

    .line 1638
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    check-cast p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;)V

    .line 1642
    :goto_0
    return-object v0

    .line 1639
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1640
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1642
    :cond_1
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1489
    .line 1490
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1491
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1492
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1493
    invoke-direct {p0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->e(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1494
    const/4 v0, 0x1

    .line 1499
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->D:Z

    if-eq v0, v1, :cond_1

    .line 1500
    if-eqz v0, :cond_3

    .line 1501
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->b()V

    .line 1506
    :cond_1
    :goto_1
    return-void

    .line 1491
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1503
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->c()V

    goto :goto_1
.end method

.method final a(I)V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1228
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 1229
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 1230
    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->s:Landroid/graphics/Rect;

    .line 1231
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    move v6, v5

    .line 1232
    :goto_0
    if-ge v6, v8, :cond_9

    .line 1233
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1234
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    move v4, v5

    .line 1237
    :goto_1
    if-ge v4, v6, :cond_1

    .line 1238
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1240
    iget-object v10, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->l:Landroid/view/View;

    if-ne v10, v2, :cond_0

    .line 1241
    invoke-virtual {p0, v0, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    .line 1237
    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 1246
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->p:Landroid/graphics/Rect;

    .line 1247
    invoke-virtual {p0, v0, v3, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1250
    iget v4, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->g:I

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1251
    iget v4, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->g:I

    invoke-static {v4, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 1253
    and-int/lit8 v10, v4, 0x70

    sparse-switch v10, :sswitch_data_0

    .line 1261
    :goto_2
    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 1272
    :cond_2
    :goto_3
    :pswitch_0
    iget v1, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->h:I

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1273
    invoke-direct {p0, v0, v9, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 1276
    :cond_3
    if-nez p1, :cond_6

    .line 1278
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->q:Landroid/graphics/Rect;

    .line 1279
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1280
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1232
    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1255
    :sswitch_0
    iget v10, v9, Landroid/graphics/Rect;->top:I

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 1258
    :sswitch_1
    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 1263
    :pswitch_1
    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v9, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 1266
    :pswitch_2
    iget v4, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v10

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v9, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 1283
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1287
    :cond_6
    add-int/lit8 v1, v6, 0x1

    move v4, v1

    :goto_4
    if-ge v4, v8, :cond_4

    .line 1288
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1289
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1290
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v10

    .line 1292
    if-eqz v10, :cond_7

    invoke-virtual {v10, p0, v1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->b(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1293
    if-nez p1, :cond_8

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->i()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1296
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->j()V

    .line 1287
    :cond_7
    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    .line 1301
    :cond_8
    packed-switch p1, :pswitch_data_1

    .line 1310
    invoke-virtual {v10, p0, v1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->c(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    .line 1314
    :goto_6
    if-ne p1, v3, :cond_7

    .line 1317
    invoke-virtual {v2, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b(Z)V

    goto :goto_5

    .line 1305
    :pswitch_3
    invoke-virtual {v10, p0, v1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->d(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    move v1, v3

    .line 1307
    goto :goto_6

    .line 1322
    :cond_9
    return-void

    .line 1253
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    .line 1261
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1301
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 835
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_0
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->k:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 840
    iget-object v0, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->k:Landroid/view/View;

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 846
    :goto_0
    return-void

    .line 841
    :cond_1
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->e:I

    if-ltz v1, :cond_2

    .line 842
    iget v0, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->e:I

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->b(Landroid/view/View;II)V

    goto :goto_0

    .line 844
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->c(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 706
    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 708
    return-void
.end method

.method a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 1034
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1035
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1036
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1037
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;II)V

    .line 1039
    invoke-direct {p0, v5, p4, v6, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;Landroid/graphics/Rect;II)V

    .line 1040
    return-void
.end method

.method a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 678
    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/design/widget/k;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 679
    return-void
.end method

.method a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 923
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 924
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 932
    :goto_0
    return-void

    .line 927
    :cond_1
    if-eqz p2, :cond_2

    .line 928
    invoke-virtual {p0, p1, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 930
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;II)Z
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->p:Landroid/graphics/Rect;

    .line 1605
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1606
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1618
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1619
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->p:Landroid/graphics/Rect;

    .line 1620
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1621
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->q:Landroid/graphics/Rect;

    .line 1622
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, p2, v0, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1624
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-gt v0, v5, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v5, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-lt v0, v5, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    if-lt v0, v3, :cond_2

    .line 1627
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 1620
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1622
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1624
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1627
    goto :goto_2
.end method

.method b()V
    .locals 2

    .prologue
    .line 1520
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->x:Z

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->C:Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

    if-nez v0, :cond_0

    .line 1523
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->C:Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

    .line 1525
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1526
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->C:Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1531
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->D:Z

    .line 1532
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->m:Lcom/oneplus/lib/design/widget/c;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/c;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1430
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1431
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 1432
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1434
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1435
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1436
    if-eqz v1, :cond_0

    .line 1437
    invoke-virtual {v1, p0, v0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->c(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1431
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1441
    :cond_1
    return-void
.end method

.method b(Landroid/view/View;I)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1557
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1558
    iget-object v0, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->k:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1559
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->p:Landroid/graphics/Rect;

    .line 1560
    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->q:Landroid/graphics/Rect;

    .line 1561
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->r:Landroid/graphics/Rect;

    .line 1563
    iget-object v0, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->k:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1564
    invoke-virtual {p0, p1, v8, v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1566
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1567
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1568
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;II)V

    .line 1570
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v9, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, v9, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 1572
    :goto_0
    invoke-direct {p0, v5, v4, v6, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;Landroid/graphics/Rect;II)V

    .line 1574
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 1575
    iget v2, v4, Landroid/graphics/Rect;->top:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 1577
    if-eqz v1, :cond_1

    .line 1578
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1580
    :cond_1
    if-eqz v2, :cond_2

    .line 1581
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1584
    :cond_2
    if-eqz v0, :cond_3

    .line 1586
    invoke-virtual {v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1587
    if-eqz v0, :cond_3

    .line 1588
    iget-object v1, v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->k:Landroid/view/View;

    invoke-virtual {v0, p0, p1, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->c(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1592
    :cond_3
    return-void

    :cond_4
    move v0, v8

    .line 1570
    goto :goto_0
.end method

.method b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 897
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 898
    invoke-virtual {v0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->a(Landroid/graphics/Rect;)V

    .line 899
    return-void
.end method

.method public c(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->m:Lcom/oneplus/lib/design/widget/c;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/c;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1454
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1455
    if-eqz v0, :cond_0

    .line 1456
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->o:Ljava/util/List;

    return-object v0
.end method

.method c()V
    .locals 2

    .prologue
    .line 1539
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->x:Z

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->C:Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

    if-eqz v0, :cond_0

    .line 1541
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1542
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->C:Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1545
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->D:Z

    .line 1546
    return-void
.end method

.method c(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 910
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->c()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 911
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1652
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1647
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;-><init>(II)V

    return-object v0
.end method

.method public d(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->m:Lcom/oneplus/lib/design/widget/c;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/c;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1472
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1473
    if-eqz v0, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->o:Ljava/util/List;

    return-object v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .prologue
    .line 1184
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1185
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->a:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_2

    .line 1186
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->a:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v1, p0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->d(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v1

    .line 1187
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 1188
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->v:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 1189
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->v:Landroid/graphics/Paint;

    .line 1191
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->v:Landroid/graphics/Paint;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->a:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->c(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1192
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->v:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Lcom/oneplus/lib/b/g;->a(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1195
    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1198
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    .line 1199
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    .line 1198
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 1202
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 1203
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->v:Landroid/graphics/Paint;

    move-object v0, p1

    .line 1202
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1205
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1208
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 294
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 296
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v1

    .line 297
    const/4 v0, 0x0

    .line 299
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    .line 300
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 304
    :cond_0
    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->invalidate()V

    .line 307
    :cond_1
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->d()Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    move-result-object v0

    return-object v0
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1481
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->f()V

    .line 1482
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final getLastWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->I:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 688
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 683
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 227
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->e()V

    .line 228
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->D:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->C:Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->C:Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->C:Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 240
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->x:Z

    .line 241
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 246
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->e()V

    .line 247
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->C:Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->C:Lcom/oneplus/lib/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->B:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->B:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 254
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->x:Z

    .line 255
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 870
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 871
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 873
    :goto_0
    if-lez v0, :cond_0

    .line 874
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 875
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 878
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 872
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 484
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 487
    if-nez v1, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->e()V

    .line 491
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 493
    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 497
    :cond_1
    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    .line 498
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->e()V

    .line 501
    :cond_3
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 850
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 851
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 852
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    .line 853
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 854
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_1

    .line 852
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 859
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 860
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 862
    if-eqz v1, :cond_2

    invoke-virtual {v1, p0, v0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 863
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 866
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25

    .prologue
    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->f()V

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a()V

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v15

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v16

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v3

    .line 719
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v17

    .line 720
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    move v9, v1

    .line 721
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 722
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 723
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 724
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 726
    add-int v22, v15, v16

    .line 727
    add-int v23, v2, v3

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v13

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v12

    .line 730
    const/4 v11, 0x0

    .line 732
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v10, v1

    .line 734
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v24

    .line 735
    const/4 v1, 0x0

    move v14, v1

    :goto_2
    move/from16 v0, v24

    if-ge v14, v0, :cond_b

    .line 736
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->l:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 737
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    move v1, v11

    move v2, v12

    move v3, v13

    .line 735
    :goto_3
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    move v11, v1

    move v12, v2

    move v13, v3

    goto :goto_2

    .line 720
    :cond_0
    const/4 v1, 0x0

    move v9, v1

    goto :goto_0

    .line 732
    :cond_1
    const/4 v1, 0x0

    move v10, v1

    goto :goto_1

    .line 742
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 744
    const/4 v5, 0x0

    .line 745
    iget v1, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->e:I

    if-ltz v1, :cond_5

    if-eqz v18, :cond_5

    .line 746
    iget v1, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->b(I)I

    move-result v1

    .line 747
    iget v2, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->c:I

    .line 748
    invoke-static {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->d(I)I

    move-result v2

    .line 747
    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    .line 750
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    if-eqz v9, :cond_4

    :cond_3
    const/4 v4, 0x5

    if-ne v2, v4, :cond_8

    if-eqz v9, :cond_8

    .line 752
    :cond_4
    const/4 v2, 0x0

    sub-int v4, v19, v16

    sub-int v1, v4, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 761
    :cond_5
    :goto_4
    if-eqz v10, :cond_c

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 764
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    .line 765
    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->E:Landroid/support/v4/view/WindowInsetsCompat;

    .line 767
    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    add-int/2addr v2, v4

    .line 769
    sub-int v1, v19, v1

    move/from16 v0, v18

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 771
    sub-int v1, v21, v2

    move/from16 v0, v20

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 775
    :goto_5
    invoke-virtual {v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 776
    if-eqz v1, :cond_6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_7

    .line 778
    :cond_6
    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;IIII)V

    .line 782
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v1, v1, v22

    iget v2, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 785
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v1, v1, v23

    iget v2, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 788
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 787
    invoke-static {v11, v1}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v1

    move v3, v4

    goto/16 :goto_3

    .line 753
    :cond_8
    const/4 v4, 0x5

    if-ne v2, v4, :cond_9

    if-eqz v9, :cond_a

    :cond_9
    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    if-eqz v9, :cond_5

    .line 755
    :cond_a
    const/4 v2, 0x0

    sub-int/2addr v1, v15

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_4

    .line 791
    :cond_b
    const/high16 v1, -0x1000000

    and-int/2addr v1, v11

    move/from16 v0, p1

    invoke-static {v13, v0, v1}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    .line 793
    shl-int/lit8 v2, v11, 0x10

    move/from16 v0, p2

    invoke-static {v12, v0, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v2

    .line 795
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 796
    return-void

    :cond_c
    move/from16 v6, p2

    move/from16 v4, p1

    goto :goto_5
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1786
    .line 1788
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    move v8, v0

    move v7, v0

    .line 1789
    :goto_0
    if-ge v8, v9, :cond_1

    .line 1790
    invoke-virtual {p0, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1791
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1792
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->h()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v7

    .line 1789
    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v7, v0

    goto :goto_0

    .line 1796
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1797
    if-eqz v0, :cond_3

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 1798
    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v0

    or-int/2addr v0, v7

    goto :goto_1

    .line 1802
    :cond_1
    if-eqz v7, :cond_2

    .line 1803
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(I)V

    .line 1805
    :cond_2
    return v7

    :cond_3
    move v0, v7

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1810
    .line 1812
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    move v7, v0

    move v6, v0

    .line 1813
    :goto_0
    if-ge v7, v8, :cond_1

    .line 1814
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1815
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1816
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->h()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v6

    .line 1813
    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    goto :goto_0

    .line 1820
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1821
    if-eqz v0, :cond_2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 1822
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    or-int/2addr v0, v6

    goto :goto_1

    .line 1825
    :cond_1
    return v6

    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 12

    .prologue
    .line 1750
    const/4 v8, 0x0

    .line 1751
    const/4 v7, 0x0

    .line 1752
    const/4 v1, 0x0

    .line 1754
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    .line 1755
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_3

    .line 1756
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1757
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1758
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->h()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    move v2, v8

    move v1, v7

    .line 1755
    :goto_1
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move v7, v1

    move v8, v2

    move v1, v0

    goto :goto_0

    .line 1762
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1763
    if-eqz v0, :cond_5

    .line 1764
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->u:[I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->u:[I

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    aput v6, v1, v3

    .line 1765
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->u:[I

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    .line 1767
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->u:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1769
    :goto_2
    if-lez p3, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->u:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1772
    :goto_3
    const/4 v1, 0x1

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_1

    .line 1767
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->u:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1768
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    .line 1769
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->u:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 1770
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 1776
    :cond_3
    const/4 v0, 0x0

    aput v8, p4, v0

    .line 1777
    const/4 v0, 0x1

    aput v7, p4, v0

    .line 1779
    if-eqz v1, :cond_4

    .line 1780
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(I)V

    .line 1782
    :cond_4
    return-void

    :cond_5
    move v0, v1

    move v2, v8

    move v1, v7

    goto :goto_1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 10

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    .line 1726
    const/4 v1, 0x0

    .line 1728
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_1

    .line 1729
    invoke-virtual {p0, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1730
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1731
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->h()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1728
    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v1, v0

    goto :goto_0

    .line 1735
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1736
    if-eqz v0, :cond_3

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1737
    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 1739
    const/4 v0, 0x1

    goto :goto_1

    .line 1743
    :cond_1
    if-eqz v1, :cond_2

    .line 1744
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(I)V

    .line 1746
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->I:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1680
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->A:Landroid/view/View;

    .line 1681
    iput-object p2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->B:Landroid/view/View;

    .line 1683
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    .line 1684
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_2

    .line 1685
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1686
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1687
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1684
    :cond_0
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1691
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1692
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 1693
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->b(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1

    .line 1696
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 2900
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;

    if-nez v0, :cond_1

    .line 2901
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2923
    :cond_0
    return-void

    .line 2905
    :cond_1
    check-cast p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;

    .line 2906
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2908
    iget-object v2, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;->a:Landroid/util/SparseArray;

    .line 2910
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 2911
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2912
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    .line 2913
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    move-result-object v5

    .line 2914
    invoke-virtual {v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    .line 2916
    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    if-eqz v5, :cond_2

    .line 2917
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 2918
    if-eqz v0, :cond_2

    .line 2919
    invoke-virtual {v5, p0, v4, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 2910
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 2927
    new-instance v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;-><init>(Landroid/os/Parcelable;)V

    .line 2929
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2930
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 2931
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2932
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    .line 2933
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 2934
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 2936
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    if-eqz v0, :cond_0

    .line 2938
    invoke-virtual {v0, p0, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->b(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2939
    if-eqz v0, :cond_0

    .line 2940
    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2930
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2944
    :cond_1
    iput-object v3, v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;->a:Landroid/util/SparseArray;

    .line 2945
    return-object v2
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 1657
    .line 1659
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    move v8, v9

    move v7, v9

    .line 1660
    :goto_0
    if-ge v8, v10, :cond_1

    .line 1661
    invoke-virtual {p0, v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1662
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1663
    invoke-virtual {v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1664
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 1665
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    .line 1667
    or-int v0, v7, v1

    .line 1669
    invoke-virtual {v6, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->a(Z)V

    .line 1660
    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v7, v0

    goto :goto_0

    .line 1671
    :cond_0
    invoke-virtual {v6, v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->a(Z)V

    move v0, v7

    goto :goto_1

    .line 1674
    :cond_1
    return v7
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1700
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->I:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 1702
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    .line 1703
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1704
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1705
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 1706
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->h()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1703
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1710
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1711
    if-eqz v4, :cond_1

    .line 1712
    invoke-virtual {v4, p0, v3, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1714
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->g()V

    .line 1715
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->j()V

    goto :goto_1

    .line 1718
    :cond_2
    iput-object v5, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->A:Landroid/view/View;

    .line 1719
    iput-object v5, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->B:Landroid/view/View;

    .line 1720
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v4, 0x3

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 506
    .line 508
    const/4 v2, 0x0

    .line 510
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v9

    .line 512
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->z:Landroid/view/View;

    if-nez v0, :cond_9

    invoke-direct {p0, p1, v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v1, v0

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 516
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_7

    .line 518
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->z:Landroid/view/View;

    invoke-virtual {v0, p0, v3, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->b(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    move v8, v0

    .line 523
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->z:Landroid/view/View;

    if-nez v0, :cond_5

    .line 524
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v8, v0

    .line 534
    :cond_0
    :goto_2
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    .line 538
    :cond_1
    if-eqz v2, :cond_2

    .line 539
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 542
    :cond_2
    if-eq v9, v10, :cond_3

    if-ne v9, v4, :cond_4

    .line 543
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->e()V

    .line 546
    :cond_4
    return v8

    .line 525
    :cond_5
    if-eqz v1, :cond_0

    .line 526
    if-nez v2, :cond_6

    .line 527
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    .line 528
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 531
    :goto_3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-object v2, v0

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_3

    :cond_7
    move v8, v7

    goto :goto_1

    :cond_8
    move v1, v0

    move v8, v7

    goto :goto_1

    :cond_9
    move v1, v7

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .prologue
    .line 2950
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;

    .line 2951
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$d;->b()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 2953
    if-eqz v0, :cond_0

    .line 2954
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->a(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2955
    const/4 v0, 0x1

    .line 2958
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .prologue
    .line 551
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 552
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->w:Z

    if-nez v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->e()V

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->w:Z

    .line 556
    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0

    .prologue
    .line 882
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 883
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->g()V

    .line 884
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->i:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 222
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 264
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    .line 265
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 268
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    .line 274
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 273
    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 275
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 278
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 280
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 275
    goto :goto_0
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 342
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 331
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 316
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 318
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 319
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 320
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 322
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 318
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->G:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
