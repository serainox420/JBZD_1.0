.class public Lnet/gotev/uploadservice/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/gotev/uploadservice/UploadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lnet/gotev/uploadservice/UploadInfo$1;

    invoke-direct {v0}, Lnet/gotev/uploadservice/UploadInfo$1;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadInfo;->h:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadInfo;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->b:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->c:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->d:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->e:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/UploadInfo;->f:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/UploadInfo;->g:I

    .line 84
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadInfo;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/UploadInfo$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/UploadInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadInfo;->h:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadInfo;->a:Ljava/lang/String;

    .line 27
    iput-wide v2, p0, Lnet/gotev/uploadservice/UploadInfo;->b:J

    .line 28
    iput-wide v2, p0, Lnet/gotev/uploadservice/UploadInfo;->c:J

    .line 29
    iput-wide v2, p0, Lnet/gotev/uploadservice/UploadInfo;->d:J

    .line 30
    iput-wide v2, p0, Lnet/gotev/uploadservice/UploadInfo;->e:J

    .line 31
    iput v1, p0, Lnet/gotev/uploadservice/UploadInfo;->f:I

    .line 32
    iput v1, p0, Lnet/gotev/uploadservice/UploadInfo;->g:I

    .line 33
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JJJILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadInfo;->h:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadInfo;->a:Ljava/lang/String;

    .line 38
    iput-wide p2, p0, Lnet/gotev/uploadservice/UploadInfo;->b:J

    .line 39
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->c:J

    .line 40
    iput-wide p4, p0, Lnet/gotev/uploadservice/UploadInfo;->d:J

    .line 41
    iput-wide p6, p0, Lnet/gotev/uploadservice/UploadInfo;->e:J

    .line 42
    iput p8, p0, Lnet/gotev/uploadservice/UploadInfo;->f:I

    .line 43
    iput p10, p0, Lnet/gotev/uploadservice/UploadInfo;->g:I

    .line 45
    if-eqz p9, :cond_0

    invoke-interface {p9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadInfo;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->c:J

    iget-wide v2, p0, Lnet/gotev/uploadservice/UploadInfo;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadInfo;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    const-string v0, "0s"

    .line 134
    :goto_0
    return-object v0

    .line 127
    :cond_0
    div-int/lit8 v1, v0, 0x3c

    .line 128
    mul-int/lit8 v2, v1, 0x3c

    sub-int/2addr v0, v2

    .line 130
    if-nez v1, :cond_1

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()D
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 142
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadInfo;->a()J

    move-result-wide v0

    .line 145
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 146
    const-wide/16 v0, 0x0

    .line 148
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v2, p0, Lnet/gotev/uploadservice/UploadInfo;->d:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    mul-double/2addr v2, v4

    div-long/2addr v0, v6

    long-to-double v0, v0

    div-double v0, v2, v0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 157
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadInfo;->c()D

    move-result-wide v0

    .line 159
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bit/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 162
    :cond_0
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Mbit/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Kbit/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadInfo;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->d:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->e:J

    return-wide v0
.end method

.method public h()I
    .locals 4

    .prologue
    .line 199
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->d:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lnet/gotev/uploadservice/UploadInfo;->e:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lnet/gotev/uploadservice/UploadInfo;->g:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadInfo;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget v0, p0, Lnet/gotev/uploadservice/UploadInfo;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lnet/gotev/uploadservice/UploadInfo;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadInfo;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 74
    return-void
.end method
