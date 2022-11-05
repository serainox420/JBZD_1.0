.class public Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
.super Ljava/lang/Object;
.source "YouTubeExtractionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/commit451/youtubeextractor/YouTubeExtractionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Landroid/net/Uri;

.field private c:Landroid/net/Uri;

.field private d:Landroid/net/Uri;

.field private e:Landroid/net/Uri;

.field private f:Landroid/net/Uri;

.field private g:Landroid/net/Uri;

.field private h:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult$1;

    invoke-direct {v0}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult$1;-><init>()V

    sput-object v0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->a:Landroid/net/Uri;

    .line 175
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->b:Landroid/net/Uri;

    .line 176
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->c:Landroid/net/Uri;

    .line 177
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->d:Landroid/net/Uri;

    .line 178
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->e:Landroid/net/Uri;

    .line 179
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->f:Landroid/net/Uri;

    .line 180
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->g:Landroid/net/Uri;

    .line 181
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->h:Landroid/net/Uri;

    .line 182
    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->a:Landroid/net/Uri;

    return-object v0
.end method

.method protected a(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->a:Landroid/net/Uri;

    .line 33
    return-object p0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->b:Landroid/net/Uri;

    return-object v0
.end method

.method protected b(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->b:Landroid/net/Uri;

    .line 43
    return-object p0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->c:Landroid/net/Uri;

    return-object v0
.end method

.method protected c(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->c:Landroid/net/Uri;

    .line 53
    return-object p0
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->d:Landroid/net/Uri;

    return-object v0
.end method

.method protected d(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->d:Landroid/net/Uri;

    .line 63
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->c()Landroid/net/Uri;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->b()Landroid/net/Uri;

    move-result-object v0

    .line 77
    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->a()Landroid/net/Uri;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->d()Landroid/net/Uri;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->e:Landroid/net/Uri;

    .line 98
    return-object p0
.end method

.method protected f(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->f:Landroid/net/Uri;

    .line 108
    return-object p0
.end method

.method protected g(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->g:Landroid/net/Uri;

    .line 118
    return-object p0
.end method

.method protected h(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->h:Landroid/net/Uri;

    .line 128
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 164
    iget-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    iget-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 167
    iget-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->e:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->f:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 169
    iget-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->g:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 170
    iget-object v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->h:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    return-void
.end method
