.class Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;
.super Landroid/view/View$BaseSavedState;
.source "MMVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/MMVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMVideoViewInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Z

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo$1;

    invoke-direct {v0}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->a:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->b:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->c:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->d:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->e:Ljava/lang/String;

    .line 152
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/millennialmedia/internal/video/MMVideoView$1;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 140
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
