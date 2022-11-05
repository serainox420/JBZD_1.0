.class Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LceRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/core/ui/view/lce/LceRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState$1;

    invoke-direct {v0}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState$1;-><init>()V

    sput-object v0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 201
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;->a:Landroid/os/Bundle;

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lpl/jbzd/core/ui/view/lce/LceRecyclerView$1;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 207
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 208
    return-void
.end method
