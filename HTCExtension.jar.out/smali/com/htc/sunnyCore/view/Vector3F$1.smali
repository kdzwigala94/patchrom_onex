.class final Lcom/htc/sunnyCore/view/Vector3F$1;
.super Ljava/lang/Object;
.source "Vector3F.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/view/Vector3F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/sunnyCore/view/Vector3F;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/sunnyCore/view/Vector3F;
    .locals 1
    .parameter "in"

    .prologue
    .line 144
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, p1}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/Vector3F$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/sunnyCore/view/Vector3F;
    .locals 1
    .parameter "size"

    .prologue
    .line 149
    new-array v0, p1, [Lcom/htc/sunnyCore/view/Vector3F;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/Vector3F$1;->newArray(I)[Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v0

    return-object v0
.end method