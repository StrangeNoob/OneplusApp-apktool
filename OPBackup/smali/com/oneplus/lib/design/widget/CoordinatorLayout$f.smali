.class public Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;
.super Landroid/support/v4/view/AbsSavedState;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "f"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3030
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f$1;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f$1;-><init>()V

    .line 3031
    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3030
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 7

    .prologue
    .line 2992
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2994
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2996
    new-array v2, v1, [I

    .line 2997
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 2999
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 3001
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;->a:Landroid/util/SparseArray;

    .line 3002
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3003
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;->a:Landroid/util/SparseArray;

    aget v5, v2, v0

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3002
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3005
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 3008
    invoke-direct {p0, p1}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3009
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3013
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3015
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v0

    .line 3016
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3018
    new-array v3, v1, [I

    .line 3019
    new-array v4, v1, [Landroid/os/Parcelable;

    .line 3021
    :goto_1
    if-ge v2, v1, :cond_1

    .line 3022
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    aput v0, v3, v2

    .line 3023
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    aput-object v0, v4, v2

    .line 3021
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    .line 3015
    goto :goto_0

    .line 3025
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3026
    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 3028
    return-void
.end method
