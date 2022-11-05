.class Lcom/intentsoftware/addapptr/ae;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field static FULL_NAME:Ljava/lang/String;

.field static NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "2.19.19"

    sput-object v0, Lcom/intentsoftware/addapptr/ae;->NAME:Ljava/lang/String;

    .line 5
    const-string v0, "AATKitAnd_v2.19.19"

    sput-object v0, Lcom/intentsoftware/addapptr/ae;->FULL_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
