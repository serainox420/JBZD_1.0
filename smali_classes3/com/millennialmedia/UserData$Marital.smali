.class public final enum Lcom/millennialmedia/UserData$Marital;
.super Ljava/lang/Enum;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Marital"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/UserData$Marital;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIVORCED:Lcom/millennialmedia/UserData$Marital;

.field public static final enum MARRIED:Lcom/millennialmedia/UserData$Marital;

.field public static final enum RELATIONSHIP:Lcom/millennialmedia/UserData$Marital;

.field public static final enum SINGLE:Lcom/millennialmedia/UserData$Marital;

.field private static final synthetic a:[Lcom/millennialmedia/UserData$Marital;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    new-instance v0, Lcom/millennialmedia/UserData$Marital;

    const-string v1, "SINGLE"

    const-string v2, "S"

    invoke-direct {v0, v1, v3, v2}, Lcom/millennialmedia/UserData$Marital;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Marital;->SINGLE:Lcom/millennialmedia/UserData$Marital;

    .line 108
    new-instance v0, Lcom/millennialmedia/UserData$Marital;

    const-string v1, "MARRIED"

    const-string v2, "M"

    invoke-direct {v0, v1, v4, v2}, Lcom/millennialmedia/UserData$Marital;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Marital;->MARRIED:Lcom/millennialmedia/UserData$Marital;

    .line 109
    new-instance v0, Lcom/millennialmedia/UserData$Marital;

    const-string v1, "DIVORCED"

    const-string v2, "D"

    invoke-direct {v0, v1, v5, v2}, Lcom/millennialmedia/UserData$Marital;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Marital;->DIVORCED:Lcom/millennialmedia/UserData$Marital;

    .line 110
    new-instance v0, Lcom/millennialmedia/UserData$Marital;

    const-string v1, "RELATIONSHIP"

    const-string v2, "O"

    invoke-direct {v0, v1, v6, v2}, Lcom/millennialmedia/UserData$Marital;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Marital;->RELATIONSHIP:Lcom/millennialmedia/UserData$Marital;

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/millennialmedia/UserData$Marital;

    sget-object v1, Lcom/millennialmedia/UserData$Marital;->SINGLE:Lcom/millennialmedia/UserData$Marital;

    aput-object v1, v0, v3

    sget-object v1, Lcom/millennialmedia/UserData$Marital;->MARRIED:Lcom/millennialmedia/UserData$Marital;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/UserData$Marital;->DIVORCED:Lcom/millennialmedia/UserData$Marital;

    aput-object v1, v0, v5

    sget-object v1, Lcom/millennialmedia/UserData$Marital;->RELATIONSHIP:Lcom/millennialmedia/UserData$Marital;

    aput-object v1, v0, v6

    sput-object v0, Lcom/millennialmedia/UserData$Marital;->a:[Lcom/millennialmedia/UserData$Marital;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-object p3, p0, Lcom/millennialmedia/UserData$Marital;->value:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/UserData$Marital;
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/millennialmedia/UserData$Marital;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/UserData$Marital;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/UserData$Marital;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/millennialmedia/UserData$Marital;->a:[Lcom/millennialmedia/UserData$Marital;

    invoke-virtual {v0}, [Lcom/millennialmedia/UserData$Marital;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/UserData$Marital;

    return-object v0
.end method
