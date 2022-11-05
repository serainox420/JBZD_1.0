.class public final Lnet/gotev/uploadservice/UploadTaskParameters;
.super Ljava/lang/Object;
.source "UploadTaskParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/gotev/uploadservice/UploadTaskParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Lnet/gotev/uploadservice/UploadNotificationConfig;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/gotev/uploadservice/UploadFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lnet/gotev/uploadservice/UploadTaskParameters$1;

    invoke-direct {v0}, Lnet/gotev/uploadservice/UploadTaskParameters$1;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadTaskParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->c:I

    .line 24
    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->d:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->f:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->c:I

    .line 24
    iput-boolean v1, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->d:Z

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->f:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->a:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->b:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->c:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->d:Z

    .line 62
    const-class v0, Lnet/gotev/uploadservice/UploadNotificationConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/UploadNotificationConfig;

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->e:Lnet/gotev/uploadservice/UploadNotificationConfig;

    .line 63
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->f:Ljava/util/ArrayList;

    const-class v1, Lnet/gotev/uploadservice/UploadFile;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 64
    return-void

    :cond_0
    move v0, v1

    .line 61
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/UploadTaskParameters$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/UploadTaskParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/gotev/uploadservice/UploadFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(I)Lnet/gotev/uploadservice/UploadTaskParameters;
    .locals 1

    .prologue
    .line 112
    if-gez p1, :cond_0

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->c:I

    .line 117
    :goto_0
    return-object p0

    .line 115
    :cond_0
    iput p1, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->c:I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lnet/gotev/uploadservice/UploadTaskParameters;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->a:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public a(Lnet/gotev/uploadservice/UploadFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public b()Lnet/gotev/uploadservice/UploadNotificationConfig;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->e:Lnet/gotev/uploadservice/UploadNotificationConfig;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lnet/gotev/uploadservice/UploadTaskParameters;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->b:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->c:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->d:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->e:Lnet/gotev/uploadservice/UploadNotificationConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 54
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTaskParameters;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 55
    return-void

    :cond_0
    move v0, v1

    .line 52
    goto :goto_0
.end method
