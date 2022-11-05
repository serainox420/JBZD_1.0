.class public final enum Lcom/millennialmedia/UserData$Gender;
.super Ljava/lang/Enum;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/UserData$Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/millennialmedia/UserData$Gender;

.field public static final enum MALE:Lcom/millennialmedia/UserData$Gender;

.field public static final enum UNKNOWN:Lcom/millennialmedia/UserData$Gender;

.field private static final synthetic a:[Lcom/millennialmedia/UserData$Gender;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/millennialmedia/UserData$Gender;

    const-string v1, "MALE"

    const-string v2, "M"

    invoke-direct {v0, v1, v3, v2}, Lcom/millennialmedia/UserData$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Gender;->MALE:Lcom/millennialmedia/UserData$Gender;

    .line 89
    new-instance v0, Lcom/millennialmedia/UserData$Gender;

    const-string v1, "FEMALE"

    const-string v2, "F"

    invoke-direct {v0, v1, v4, v2}, Lcom/millennialmedia/UserData$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Gender;->FEMALE:Lcom/millennialmedia/UserData$Gender;

    .line 90
    new-instance v0, Lcom/millennialmedia/UserData$Gender;

    const-string v1, "UNKNOWN"

    const-string v2, "O"

    invoke-direct {v0, v1, v5, v2}, Lcom/millennialmedia/UserData$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Gender;->UNKNOWN:Lcom/millennialmedia/UserData$Gender;

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/millennialmedia/UserData$Gender;

    sget-object v1, Lcom/millennialmedia/UserData$Gender;->MALE:Lcom/millennialmedia/UserData$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/millennialmedia/UserData$Gender;->FEMALE:Lcom/millennialmedia/UserData$Gender;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/UserData$Gender;->UNKNOWN:Lcom/millennialmedia/UserData$Gender;

    aput-object v1, v0, v5

    sput-object v0, Lcom/millennialmedia/UserData$Gender;->a:[Lcom/millennialmedia/UserData$Gender;

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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput-object p3, p0, Lcom/millennialmedia/UserData$Gender;->value:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/UserData$Gender;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/millennialmedia/UserData$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/UserData$Gender;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/UserData$Gender;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/millennialmedia/UserData$Gender;->a:[Lcom/millennialmedia/UserData$Gender;

    invoke-virtual {v0}, [Lcom/millennialmedia/UserData$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/UserData$Gender;

    return-object v0
.end method
