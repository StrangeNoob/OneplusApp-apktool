.class Lcom/oneplus/settings/better/OPAppModel$1;
.super Ljava/lang/Object;
.source "OPAppModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPAppModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oneplus/settings/better/OPAppModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 153
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    invoke-direct {v0, p1}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPAppModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oneplus/settings/better/OPAppModel;
    .locals 1
    .param p1, "size"    # I

    .line 157
    new-array v0, p1, [Lcom/oneplus/settings/better/OPAppModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPAppModel$1;->newArray(I)[Lcom/oneplus/settings/better/OPAppModel;

    move-result-object p1

    return-object p1
.end method
