.class public final enum Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;
.super Ljava/lang/Enum;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/requests/settings/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

.field public static final enum MALE:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

.field public static final enum UNSET:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

.field private static final synthetic b:[Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    const-string v1, "UNSET"

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->UNSET:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    .line 28
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->MALE:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    .line 32
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->FEMALE:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    sget-object v1, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->UNSET:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->MALE:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->FEMALE:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->b:[Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    .line 36
    sget-object v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->UNSET:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    const-string v1, ""

    iput-object v1, v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->a:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->MALE:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    const-string v1, "MALE"

    iput-object v1, v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->a:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->FEMALE:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    const-string v1, "FEMALE"

    iput-object v1, v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->a:Ljava/lang/String;

    .line 39
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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getStringForValue(Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnknownGenderException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    :try_start_0
    sget-object v1, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->UNSET:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    if-ne p0, v1, :cond_1

    .line 52
    const-string v0, ""

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    sget-object v1, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->MALE:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    if-ne p0, v1, :cond_2

    .line 54
    const-string v0, "m"

    goto :goto_0

    .line 55
    :cond_2
    sget-object v1, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->FEMALE:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    if-ne p0, v1, :cond_0

    .line 56
    const-string v0, "f"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    throw v0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Lcom/smaato/soma/exception/UnknownGenderException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnknownGenderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getValueForString(Ljava/lang/String;)Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnknownStringGenderValue;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    :try_start_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    sget-object v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->UNSET:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    sget-object v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->MALE:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    sget-object v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->FEMALE:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    throw v0

    .line 85
    :catch_1
    move-exception v0

    .line 86
    new-instance v1, Lcom/smaato/soma/exception/UnknownStringGenderValue;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnknownStringGenderValue;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->b:[Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    invoke-virtual {v0}, [Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->a:Ljava/lang/String;

    return-object v0
.end method
