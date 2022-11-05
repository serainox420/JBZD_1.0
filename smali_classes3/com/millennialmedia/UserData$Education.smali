.class public final enum Lcom/millennialmedia/UserData$Education;
.super Ljava/lang/Enum;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Education"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/UserData$Education;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASSOCIATE:Lcom/millennialmedia/UserData$Education;

.field public static final enum BACHELOR:Lcom/millennialmedia/UserData$Education;

.field public static final enum HIGH_SCHOOL:Lcom/millennialmedia/UserData$Education;

.field public static final enum MASTERS:Lcom/millennialmedia/UserData$Education;

.field public static final enum PHD:Lcom/millennialmedia/UserData$Education;

.field public static final enum PROFESSIONAL:Lcom/millennialmedia/UserData$Education;

.field public static final enum SOME_COLLEGE:Lcom/millennialmedia/UserData$Education;

.field private static final synthetic a:[Lcom/millennialmedia/UserData$Education;


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

    .line 39
    new-instance v0, Lcom/millennialmedia/UserData$Education;

    const-string v1, "HIGH_SCHOOL"

    const-string v2, "highschool"

    invoke-direct {v0, v1, v4, v2}, Lcom/millennialmedia/UserData$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Education;->HIGH_SCHOOL:Lcom/millennialmedia/UserData$Education;

    .line 40
    new-instance v0, Lcom/millennialmedia/UserData$Education;

    const-string v1, "SOME_COLLEGE"

    const-string v2, "somecollege"

    invoke-direct {v0, v1, v5, v2}, Lcom/millennialmedia/UserData$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Education;->SOME_COLLEGE:Lcom/millennialmedia/UserData$Education;

    .line 41
    new-instance v0, Lcom/millennialmedia/UserData$Education;

    const-string v1, "ASSOCIATE"

    const-string v2, "associate"

    invoke-direct {v0, v1, v6, v2}, Lcom/millennialmedia/UserData$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Education;->ASSOCIATE:Lcom/millennialmedia/UserData$Education;

    .line 42
    new-instance v0, Lcom/millennialmedia/UserData$Education;

    const-string v1, "BACHELOR"

    const-string v2, "bachelor"

    invoke-direct {v0, v1, v7, v2}, Lcom/millennialmedia/UserData$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Education;->BACHELOR:Lcom/millennialmedia/UserData$Education;

    .line 43
    new-instance v0, Lcom/millennialmedia/UserData$Education;

    const-string v1, "MASTERS"

    const-string v2, "masters"

    invoke-direct {v0, v1, v8, v2}, Lcom/millennialmedia/UserData$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Education;->MASTERS:Lcom/millennialmedia/UserData$Education;

    .line 44
    new-instance v0, Lcom/millennialmedia/UserData$Education;

    const-string v1, "PHD"

    const/4 v2, 0x5

    const-string v3, "phd"

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/UserData$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Education;->PHD:Lcom/millennialmedia/UserData$Education;

    .line 45
    new-instance v0, Lcom/millennialmedia/UserData$Education;

    const-string v1, "PROFESSIONAL"

    const/4 v2, 0x6

    const-string v3, "professional"

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/UserData$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Education;->PROFESSIONAL:Lcom/millennialmedia/UserData$Education;

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/millennialmedia/UserData$Education;

    sget-object v1, Lcom/millennialmedia/UserData$Education;->HIGH_SCHOOL:Lcom/millennialmedia/UserData$Education;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/UserData$Education;->SOME_COLLEGE:Lcom/millennialmedia/UserData$Education;

    aput-object v1, v0, v5

    sget-object v1, Lcom/millennialmedia/UserData$Education;->ASSOCIATE:Lcom/millennialmedia/UserData$Education;

    aput-object v1, v0, v6

    sget-object v1, Lcom/millennialmedia/UserData$Education;->BACHELOR:Lcom/millennialmedia/UserData$Education;

    aput-object v1, v0, v7

    sget-object v1, Lcom/millennialmedia/UserData$Education;->MASTERS:Lcom/millennialmedia/UserData$Education;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/millennialmedia/UserData$Education;->PHD:Lcom/millennialmedia/UserData$Education;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/millennialmedia/UserData$Education;->PROFESSIONAL:Lcom/millennialmedia/UserData$Education;

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/UserData$Education;->a:[Lcom/millennialmedia/UserData$Education;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/millennialmedia/UserData$Education;->value:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/UserData$Education;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/millennialmedia/UserData$Education;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/UserData$Education;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/UserData$Education;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/millennialmedia/UserData$Education;->a:[Lcom/millennialmedia/UserData$Education;

    invoke-virtual {v0}, [Lcom/millennialmedia/UserData$Education;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/UserData$Education;

    return-object v0
.end method
