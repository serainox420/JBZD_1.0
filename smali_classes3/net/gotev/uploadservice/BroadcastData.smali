.class Lnet/gotev/uploadservice/BroadcastData;
.super Ljava/lang/Object;
.source "BroadcastData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/BroadcastData$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/gotev/uploadservice/BroadcastData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lnet/gotev/uploadservice/BroadcastData$Status;

.field private b:Ljava/lang/Exception;

.field private c:Lnet/gotev/uploadservice/UploadInfo;

.field private d:Lnet/gotev/uploadservice/ServerResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lnet/gotev/uploadservice/BroadcastData$1;

    invoke-direct {v0}, Lnet/gotev/uploadservice/BroadcastData$1;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/BroadcastData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lnet/gotev/uploadservice/BroadcastData$Status;->values()[Lnet/gotev/uploadservice/BroadcastData$Status;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->a:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    iput-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->b:Ljava/lang/Exception;

    .line 63
    const-class v0, Lnet/gotev/uploadservice/UploadInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/UploadInfo;

    iput-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->c:Lnet/gotev/uploadservice/UploadInfo;

    .line 64
    const-class v0, Lnet/gotev/uploadservice/ServerResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/ServerResponse;

    iput-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->d:Lnet/gotev/uploadservice/ServerResponse;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/BroadcastData$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/BroadcastData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v1, "broadcastData"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    return-object v0
.end method

.method public a(Ljava/lang/Exception;)Lnet/gotev/uploadservice/BroadcastData;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lnet/gotev/uploadservice/BroadcastData;->b:Ljava/lang/Exception;

    .line 92
    return-object p0
.end method

.method public a(Lnet/gotev/uploadservice/BroadcastData$Status;)Lnet/gotev/uploadservice/BroadcastData;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lnet/gotev/uploadservice/BroadcastData;->a:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 83
    return-object p0
.end method

.method public a(Lnet/gotev/uploadservice/ServerResponse;)Lnet/gotev/uploadservice/BroadcastData;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lnet/gotev/uploadservice/BroadcastData;->d:Lnet/gotev/uploadservice/ServerResponse;

    .line 110
    return-object p0
.end method

.method public a(Lnet/gotev/uploadservice/UploadInfo;)Lnet/gotev/uploadservice/BroadcastData;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lnet/gotev/uploadservice/BroadcastData;->c:Lnet/gotev/uploadservice/UploadInfo;

    .line 101
    return-object p0
.end method

.method public b()Lnet/gotev/uploadservice/BroadcastData$Status;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->a:Lnet/gotev/uploadservice/BroadcastData$Status;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status not defined! Returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/gotev/uploadservice/BroadcastData$Status;->CANCELLED:Lnet/gotev/uploadservice/BroadcastData$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lnet/gotev/uploadservice/BroadcastData$Status;->CANCELLED:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->a:Lnet/gotev/uploadservice/BroadcastData$Status;

    goto :goto_0
.end method

.method public c()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method public d()Lnet/gotev/uploadservice/UploadInfo;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->c:Lnet/gotev/uploadservice/UploadInfo;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lnet/gotev/uploadservice/ServerResponse;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->d:Lnet/gotev/uploadservice/ServerResponse;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->a:Lnet/gotev/uploadservice/BroadcastData$Status;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/BroadcastData$Status;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->b:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 56
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->c:Lnet/gotev/uploadservice/UploadInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->d:Lnet/gotev/uploadservice/ServerResponse;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    return-void
.end method
