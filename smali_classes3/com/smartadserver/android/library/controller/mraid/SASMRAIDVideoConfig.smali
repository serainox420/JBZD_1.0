.class public Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;
.super Ljava/lang/Object;
.source "SASMRAIDVideoConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig$1;

    invoke-direct {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig$1;-><init>()V

    sput-object v0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->a:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->b:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->c:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->d:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->e:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->f:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->g:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->h:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->i:Ljava/lang/String;

    .line 128
    return-void

    :cond_0
    move v0, v2

    .line 121
    goto :goto_0

    :cond_1
    move v0, v2

    .line 122
    goto :goto_1

    :cond_2
    move v0, v2

    .line 123
    goto :goto_2

    :cond_3
    move v1, v2

    .line 124
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->a:Ljava/lang/String;

    .line 100
    iput p2, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->b:I

    .line 101
    iput p3, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->c:I

    .line 102
    iput-boolean p4, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->d:Z

    .line 103
    iput-boolean p5, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->e:Z

    .line 104
    iput-boolean p6, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->f:Z

    .line 105
    iput-boolean p7, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->g:Z

    .line 106
    iput-object p8, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->h:Ljava/lang/String;

    .line 107
    iput-object p9, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->i:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->d:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->e:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->f:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->g:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->h:Ljava/lang/String;

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->i:Ljava/lang/String;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()F
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->c:I

    if-eqz v0, :cond_0

    .line 63
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 88
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->e:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 89
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->f:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->g:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 92
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return-void

    :cond_0
    move v0, v2

    .line 87
    goto :goto_0

    :cond_1
    move v0, v2

    .line 88
    goto :goto_1

    :cond_2
    move v0, v2

    .line 89
    goto :goto_2

    :cond_3
    move v1, v2

    .line 90
    goto :goto_3
.end method
