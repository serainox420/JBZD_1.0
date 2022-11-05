.class Lcom/apprupt/sdk/CvRandomString;
.super Ljava/lang/Object;
.source "CvRandomString.java"


# static fields
.field private static a:I

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/apprupt/sdk/CvRandomString;->a:I

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/apprupt/sdk/CvRandomString;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    sget-object v0, Lcom/apprupt/sdk/CvRandomString;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cvid-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUWXYZ0123456789"

    invoke-static {v1, v2}, Lcom/apprupt/sdk/CvRandomString;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-%05d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvRandomString;->b:Ljava/lang/String;

    .line 50
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvRandomString;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/apprupt/sdk/CvRandomString;->a:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/apprupt/sdk/CvRandomString;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789"

    invoke-static {p0, v0}, Lcom/apprupt/sdk/CvRandomString;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Characters set have to contain at least two characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    const/4 v0, 0x1

    if-ge p0, v0, :cond_1

    .line 36
    const-string v0, ""

    .line 43
    :goto_0
    return-object v0

    .line 38
    :cond_1
    new-array v1, p0, [C

    .line 39
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 40
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_2

    .line 41
    invoke-virtual {v2, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method
