.class public final Lnet/gotev/uploadservice/NameValue;
.super Ljava/lang/Object;
.source "NameValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lnet/gotev/uploadservice/NameValue$1;

    invoke-direct {v0}, Lnet/gotev/uploadservice/NameValue$1;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/NameValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/NameValue;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/NameValue;->b:Ljava/lang/String;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/NameValue$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/NameValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p3, :cond_1

    invoke-static {p1}, Lnet/gotev/uploadservice/NameValue;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lnet/gotev/uploadservice/NameValue;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be ASCII only! Read http://stackoverflow.com/a/4410331"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    iput-object p1, p0, Lnet/gotev/uploadservice/NameValue;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lnet/gotev/uploadservice/NameValue;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 79
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    const/4 v2, 0x1

    move v0, v1

    .line 83
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 85
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lnet/gotev/uploadservice/NameValue;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnet/gotev/uploadservice/NameValue;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    instance-of v1, p1, Lnet/gotev/uploadservice/NameValue;

    if-eqz v1, :cond_0

    .line 38
    check-cast p1, Lnet/gotev/uploadservice/NameValue;

    .line 39
    iget-object v1, p0, Lnet/gotev/uploadservice/NameValue;->a:Ljava/lang/String;

    iget-object v2, p1, Lnet/gotev/uploadservice/NameValue;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/gotev/uploadservice/NameValue;->b:Ljava/lang/String;

    iget-object v2, p1, Lnet/gotev/uploadservice/NameValue;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 44
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lnet/gotev/uploadservice/NameValue;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lnet/gotev/uploadservice/NameValue;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void
.end method
