.class final enum Lcom/inmobi/commons/data/DeviceInfo$a;
.super Ljava/lang/Enum;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/data/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/data/DeviceInfo$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/commons/data/DeviceInfo$a;

.field public static final enum b:Lcom/inmobi/commons/data/DeviceInfo$a;

.field public static final enum c:Lcom/inmobi/commons/data/DeviceInfo$a;

.field public static final enum d:Lcom/inmobi/commons/data/DeviceInfo$a;

.field private static final synthetic f:[Lcom/inmobi/commons/data/DeviceInfo$a;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 32
    new-instance v0, Lcom/inmobi/commons/data/DeviceInfo$a;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/commons/data/DeviceInfo$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/data/DeviceInfo$a;->a:Lcom/inmobi/commons/data/DeviceInfo$a;

    new-instance v0, Lcom/inmobi/commons/data/DeviceInfo$a;

    const-string v1, "REVERSE_PORTRAIT"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/commons/data/DeviceInfo$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/data/DeviceInfo$a;->b:Lcom/inmobi/commons/data/DeviceInfo$a;

    new-instance v0, Lcom/inmobi/commons/data/DeviceInfo$a;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3, v4}, Lcom/inmobi/commons/data/DeviceInfo$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/data/DeviceInfo$a;->c:Lcom/inmobi/commons/data/DeviceInfo$a;

    new-instance v0, Lcom/inmobi/commons/data/DeviceInfo$a;

    const-string v1, "REVERSE_LANDSCAPE"

    invoke-direct {v0, v1, v4, v6}, Lcom/inmobi/commons/data/DeviceInfo$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/data/DeviceInfo$a;->d:Lcom/inmobi/commons/data/DeviceInfo$a;

    .line 31
    new-array v0, v6, [Lcom/inmobi/commons/data/DeviceInfo$a;

    sget-object v1, Lcom/inmobi/commons/data/DeviceInfo$a;->a:Lcom/inmobi/commons/data/DeviceInfo$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/commons/data/DeviceInfo$a;->b:Lcom/inmobi/commons/data/DeviceInfo$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/data/DeviceInfo$a;->c:Lcom/inmobi/commons/data/DeviceInfo$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/data/DeviceInfo$a;->d:Lcom/inmobi/commons/data/DeviceInfo$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/data/DeviceInfo$a;->f:[Lcom/inmobi/commons/data/DeviceInfo$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/inmobi/commons/data/DeviceInfo$a;->e:I

    .line 37
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/inmobi/commons/data/DeviceInfo$a;->e:I

    return v0
.end method

.method static synthetic a(Lcom/inmobi/commons/data/DeviceInfo$a;)I
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/inmobi/commons/data/DeviceInfo$a;->a()I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/data/DeviceInfo$a;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/inmobi/commons/data/DeviceInfo$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/data/DeviceInfo$a;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/data/DeviceInfo$a;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/inmobi/commons/data/DeviceInfo$a;->f:[Lcom/inmobi/commons/data/DeviceInfo$a;

    invoke-virtual {v0}, [Lcom/inmobi/commons/data/DeviceInfo$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/data/DeviceInfo$a;

    return-object v0
.end method
