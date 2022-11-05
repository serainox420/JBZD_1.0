.class public final Lnet/gotev/uploadservice/HttpUploadTaskParameters;
.super Ljava/lang/Object;
.source "HttpUploadTaskParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/gotev/uploadservice/HttpUploadTaskParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lnet/gotev/uploadservice/HttpUploadTaskParameters$1;

    invoke-direct {v0}, Lnet/gotev/uploadservice/HttpUploadTaskParameters$1;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "POST"

    iput-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->b:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->c:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->d:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->e:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v1, "POST"

    iput-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->b:Ljava/lang/String;

    .line 20
    iput-boolean v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->c:Z

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->d:Ljava/util/ArrayList;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->e:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->b:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->a:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->c:Z

    .line 56
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->d:Ljava/util/ArrayList;

    const-class v1, Lnet/gotev/uploadservice/NameValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 57
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->e:Ljava/util/ArrayList;

    const-class v1, Lnet/gotev/uploadservice/NameValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 58
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/HttpUploadTaskParameters$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;-><init>(Landroid/os/Parcel;)V

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
            "Lnet/gotev/uploadservice/NameValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->d:Ljava/util/ArrayList;

    new-instance v1, Lnet/gotev/uploadservice/NameValue;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lnet/gotev/uploadservice/NameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->e:Ljava/util/ArrayList;

    new-instance v1, Lnet/gotev/uploadservice/NameValue;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lnet/gotev/uploadservice/NameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->c:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-boolean v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 48
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 49
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 50
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
