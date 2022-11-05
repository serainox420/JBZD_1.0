.class public final enum Lcom/millennialmedia/UserData$Ethnicity;
.super Ljava/lang/Enum;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ethnicity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/UserData$Ethnicity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASIAN:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum BLACK:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum HISPANIC:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum INDIAN:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum MIDDLE_EASTERN:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum NATIVE_AMERICAN:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum OTHER:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum PACIFIC_ISLANDER:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum WHITE:Lcom/millennialmedia/UserData$Ethnicity;

.field private static final synthetic a:[Lcom/millennialmedia/UserData$Ethnicity;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    new-instance v0, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v1, "HISPANIC"

    const-string v2, "hispanic"

    invoke-direct {v0, v1, v4, v2}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Ethnicity;->HISPANIC:Lcom/millennialmedia/UserData$Ethnicity;

    .line 64
    new-instance v0, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v1, "BLACK"

    const-string v2, "africanamerican"

    invoke-direct {v0, v1, v5, v2}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Ethnicity;->BLACK:Lcom/millennialmedia/UserData$Ethnicity;

    .line 65
    new-instance v0, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v1, "ASIAN"

    const-string v2, "asian"

    invoke-direct {v0, v1, v6, v2}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Ethnicity;->ASIAN:Lcom/millennialmedia/UserData$Ethnicity;

    .line 66
    new-instance v0, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v1, "INDIAN"

    const-string v2, "indian"

    invoke-direct {v0, v1, v7, v2}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Ethnicity;->INDIAN:Lcom/millennialmedia/UserData$Ethnicity;

    .line 67
    new-instance v0, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v1, "MIDDLE_EASTERN"

    const-string v2, "middleeastern"

    invoke-direct {v0, v1, v8, v2}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Ethnicity;->MIDDLE_EASTERN:Lcom/millennialmedia/UserData$Ethnicity;

    .line 68
    new-instance v0, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v1, "NATIVE_AMERICAN"

    const/4 v2, 0x5

    const-string v3, "nativeamerican"

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Ethnicity;->NATIVE_AMERICAN:Lcom/millennialmedia/UserData$Ethnicity;

    .line 69
    new-instance v0, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v1, "PACIFIC_ISLANDER"

    const/4 v2, 0x6

    const-string v3, "pacificislander"

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Ethnicity;->PACIFIC_ISLANDER:Lcom/millennialmedia/UserData$Ethnicity;

    .line 70
    new-instance v0, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v1, "WHITE"

    const/4 v2, 0x7

    const-string v3, "white"

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Ethnicity;->WHITE:Lcom/millennialmedia/UserData$Ethnicity;

    .line 71
    new-instance v0, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v1, "OTHER"

    const/16 v2, 0x8

    const-string v3, "other"

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Ethnicity;->OTHER:Lcom/millennialmedia/UserData$Ethnicity;

    .line 62
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/millennialmedia/UserData$Ethnicity;

    sget-object v1, Lcom/millennialmedia/UserData$Ethnicity;->HISPANIC:Lcom/millennialmedia/UserData$Ethnicity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/UserData$Ethnicity;->BLACK:Lcom/millennialmedia/UserData$Ethnicity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/millennialmedia/UserData$Ethnicity;->ASIAN:Lcom/millennialmedia/UserData$Ethnicity;

    aput-object v1, v0, v6

    sget-object v1, Lcom/millennialmedia/UserData$Ethnicity;->INDIAN:Lcom/millennialmedia/UserData$Ethnicity;

    aput-object v1, v0, v7

    sget-object v1, Lcom/millennialmedia/UserData$Ethnicity;->MIDDLE_EASTERN:Lcom/millennialmedia/UserData$Ethnicity;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/millennialmedia/UserData$Ethnicity;->NATIVE_AMERICAN:Lcom/millennialmedia/UserData$Ethnicity;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/millennialmedia/UserData$Ethnicity;->PACIFIC_ISLANDER:Lcom/millennialmedia/UserData$Ethnicity;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/millennialmedia/UserData$Ethnicity;->WHITE:Lcom/millennialmedia/UserData$Ethnicity;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/millennialmedia/UserData$Ethnicity;->OTHER:Lcom/millennialmedia/UserData$Ethnicity;

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/UserData$Ethnicity;->a:[Lcom/millennialmedia/UserData$Ethnicity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/millennialmedia/UserData$Ethnicity;->value:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/UserData$Ethnicity;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/millennialmedia/UserData$Ethnicity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/UserData$Ethnicity;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/UserData$Ethnicity;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/millennialmedia/UserData$Ethnicity;->a:[Lcom/millennialmedia/UserData$Ethnicity;

    invoke-virtual {v0}, [Lcom/millennialmedia/UserData$Ethnicity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/UserData$Ethnicity;

    return-object v0
.end method
