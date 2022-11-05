.class public final enum Lcom/intentsoftware/addapptr/AdType;
.super Ljava/lang/Enum;
.source "AdType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intentsoftware/addapptr/AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intentsoftware/addapptr/AdType;

.field public static final enum BANNER:Lcom/intentsoftware/addapptr/AdType;
    .annotation runtime Lcom/intentsoftware/addapptr/i;
        reportPrefix = "banner"
    .end annotation
.end field

.field public static final enum FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;
    .annotation runtime Lcom/intentsoftware/addapptr/i;
        reportPrefix = "full"
    .end annotation
.end field

.field public static final enum NATIVE:Lcom/intentsoftware/addapptr/AdType;
    .annotation runtime Lcom/intentsoftware/addapptr/i;
        reportPrefix = "native"
    .end annotation
.end field

.field public static final enum NATIVE_BANNER:Lcom/intentsoftware/addapptr/AdType;

.field public static final enum NATIVE_INTERSTITIAL:Lcom/intentsoftware/addapptr/AdType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/intentsoftware/addapptr/AdType;

    const-string v1, "FULLSCREEN"

    invoke-direct {v0, v1, v2}, Lcom/intentsoftware/addapptr/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    .line 18
    new-instance v0, Lcom/intentsoftware/addapptr/AdType;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v3}, Lcom/intentsoftware/addapptr/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    .line 20
    new-instance v0, Lcom/intentsoftware/addapptr/AdType;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v4}, Lcom/intentsoftware/addapptr/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    .line 22
    new-instance v0, Lcom/intentsoftware/addapptr/AdType;

    const-string v1, "NATIVE_BANNER"

    invoke-direct {v0, v1, v5}, Lcom/intentsoftware/addapptr/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdType;->NATIVE_BANNER:Lcom/intentsoftware/addapptr/AdType;

    .line 23
    new-instance v0, Lcom/intentsoftware/addapptr/AdType;

    const-string v1, "NATIVE_INTERSTITIAL"

    invoke-direct {v0, v1, v6}, Lcom/intentsoftware/addapptr/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdType;->NATIVE_INTERSTITIAL:Lcom/intentsoftware/addapptr/AdType;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/intentsoftware/addapptr/AdType;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE_BANNER:Lcom/intentsoftware/addapptr/AdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE_INTERSTITIAL:Lcom/intentsoftware/addapptr/AdType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/intentsoftware/addapptr/AdType;->$VALUES:[Lcom/intentsoftware/addapptr/AdType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intentsoftware/addapptr/AdType;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/intentsoftware/addapptr/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/AdType;

    return-object v0
.end method

.method public static values()[Lcom/intentsoftware/addapptr/AdType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/intentsoftware/addapptr/AdType;->$VALUES:[Lcom/intentsoftware/addapptr/AdType;

    invoke-virtual {v0}, [Lcom/intentsoftware/addapptr/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intentsoftware/addapptr/AdType;

    return-object v0
.end method


# virtual methods
.method public getReportPrefix()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/AdType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Lcom/intentsoftware/addapptr/i;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/i;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Lcom/intentsoftware/addapptr/i;->reportPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s is missing %s field."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 32
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/AdType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 31
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s ad size is missing AdTypeInfo annotation."

    new-array v3, v6, [Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/AdType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 38
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
