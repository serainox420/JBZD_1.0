.class public final Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.super Lcom/google/android/exoplayer2/metadata/scte35/SpliceCommand;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;,
        Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 186
    invoke-static {p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b;->a(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->a:Ljava/util/List;

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 179
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->a:Ljava/util/List;

    .line 180
    return-void
.end method

.method static a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;
    .locals 4

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v1

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 195
    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b;->a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 205
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b;->a(Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b;Landroid/os/Parcel;)V

    .line 206
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method
