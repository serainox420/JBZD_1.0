.class public final enum Lpl/jbzd/api/exception/ApiException$ErrorLevel;
.super Ljava/lang/Enum;
.source "ApiException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/api/exception/ApiException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpl/jbzd/api/exception/ApiException$ErrorLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/jbzd/api/exception/ApiException$ErrorLevel;

.field public static final enum ALERT:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

.field public static final enum CRITICAL:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

.field public static final enum EMERGENCY:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

.field public static final enum ERROR:Lpl/jbzd/api/exception/ApiException$ErrorLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    const-string v1, "EMERGENCY"

    invoke-direct {v0, v1, v2}, Lpl/jbzd/api/exception/ApiException$ErrorLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->EMERGENCY:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    new-instance v0, Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    const-string v1, "CRITICAL"

    invoke-direct {v0, v1, v3}, Lpl/jbzd/api/exception/ApiException$ErrorLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->CRITICAL:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    new-instance v0, Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lpl/jbzd/api/exception/ApiException$ErrorLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->ERROR:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    new-instance v0, Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    const-string v1, "ALERT"

    invoke-direct {v0, v1, v5}, Lpl/jbzd/api/exception/ApiException$ErrorLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->ALERT:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    const/4 v0, 0x4

    new-array v0, v0, [Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    sget-object v1, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->EMERGENCY:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    aput-object v1, v0, v2

    sget-object v1, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->CRITICAL:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    aput-object v1, v0, v3

    sget-object v1, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->ERROR:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    aput-object v1, v0, v4

    sget-object v1, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->ALERT:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    aput-object v1, v0, v5

    sput-object v0, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->$VALUES:[Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/jbzd/api/exception/ApiException$ErrorLevel;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    return-object v0
.end method

.method public static values()[Lpl/jbzd/api/exception/ApiException$ErrorLevel;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->$VALUES:[Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    invoke-virtual {v0}, [Lpl/jbzd/api/exception/ApiException$ErrorLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    return-object v0
.end method
