.class final Lpl/jbzd/app/ui/view/TagGroup$SavedState$1;
.super Ljava/lang/Object;
.source "TagGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/ui/view/TagGroup$SavedState;
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
        "Lpl/jbzd/app/ui/view/TagGroup$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lpl/jbzd/app/ui/view/TagGroup$SavedState;
    .locals 1

    .prologue
    .line 563
    new-instance v0, Lpl/jbzd/app/ui/view/TagGroup$SavedState;

    invoke-direct {v0, p1}, Lpl/jbzd/app/ui/view/TagGroup$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lpl/jbzd/app/ui/view/TagGroup$SavedState;
    .locals 1

    .prologue
    .line 567
    new-array v0, p1, [Lpl/jbzd/app/ui/view/TagGroup$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0, p1}, Lpl/jbzd/app/ui/view/TagGroup$SavedState$1;->a(Landroid/os/Parcel;)Lpl/jbzd/app/ui/view/TagGroup$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0, p1}, Lpl/jbzd/app/ui/view/TagGroup$SavedState$1;->a(I)[Lpl/jbzd/app/ui/view/TagGroup$SavedState;

    move-result-object v0

    return-object v0
.end method
