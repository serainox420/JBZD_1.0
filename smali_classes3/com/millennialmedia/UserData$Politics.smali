.class public final enum Lcom/millennialmedia/UserData$Politics;
.super Ljava/lang/Enum;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Politics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/UserData$Politics;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONSERVATIVE:Lcom/millennialmedia/UserData$Politics;

.field public static final enum DEMOCRAT:Lcom/millennialmedia/UserData$Politics;

.field public static final enum INDEPENDENT:Lcom/millennialmedia/UserData$Politics;

.field public static final enum LIBERAL:Lcom/millennialmedia/UserData$Politics;

.field public static final enum MODERATE:Lcom/millennialmedia/UserData$Politics;

.field public static final enum OTHER:Lcom/millennialmedia/UserData$Politics;

.field public static final enum REPUBLICAN:Lcom/millennialmedia/UserData$Politics;

.field private static final synthetic a:[Lcom/millennialmedia/UserData$Politics;


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

    .line 127
    new-instance v0, Lcom/millennialmedia/UserData$Politics;

    const-string v1, "REPUBLICAN"

    const-string v2, "republican"

    invoke-direct {v0, v1, v4, v2}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Politics;->REPUBLICAN:Lcom/millennialmedia/UserData$Politics;

    .line 128
    new-instance v0, Lcom/millennialmedia/UserData$Politics;

    const-string v1, "DEMOCRAT"

    const-string v2, "democrat"

    invoke-direct {v0, v1, v5, v2}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Politics;->DEMOCRAT:Lcom/millennialmedia/UserData$Politics;

    .line 129
    new-instance v0, Lcom/millennialmedia/UserData$Politics;

    const-string v1, "CONSERVATIVE"

    const-string v2, "conservative"

    invoke-direct {v0, v1, v6, v2}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Politics;->CONSERVATIVE:Lcom/millennialmedia/UserData$Politics;

    .line 130
    new-instance v0, Lcom/millennialmedia/UserData$Politics;

    const-string v1, "MODERATE"

    const-string v2, "moderate"

    invoke-direct {v0, v1, v7, v2}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Politics;->MODERATE:Lcom/millennialmedia/UserData$Politics;

    .line 131
    new-instance v0, Lcom/millennialmedia/UserData$Politics;

    const-string v1, "LIBERAL"

    const-string v2, "liberal"

    invoke-direct {v0, v1, v8, v2}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Politics;->LIBERAL:Lcom/millennialmedia/UserData$Politics;

    .line 132
    new-instance v0, Lcom/millennialmedia/UserData$Politics;

    const-string v1, "INDEPENDENT"

    const/4 v2, 0x5

    const-string v3, "independent"

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Politics;->INDEPENDENT:Lcom/millennialmedia/UserData$Politics;

    .line 133
    new-instance v0, Lcom/millennialmedia/UserData$Politics;

    const-string v1, "OTHER"

    const/4 v2, 0x6

    const-string v3, "other"

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Politics;->OTHER:Lcom/millennialmedia/UserData$Politics;

    .line 126
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/millennialmedia/UserData$Politics;

    sget-object v1, Lcom/millennialmedia/UserData$Politics;->REPUBLICAN:Lcom/millennialmedia/UserData$Politics;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/UserData$Politics;->DEMOCRAT:Lcom/millennialmedia/UserData$Politics;

    aput-object v1, v0, v5

    sget-object v1, Lcom/millennialmedia/UserData$Politics;->CONSERVATIVE:Lcom/millennialmedia/UserData$Politics;

    aput-object v1, v0, v6

    sget-object v1, Lcom/millennialmedia/UserData$Politics;->MODERATE:Lcom/millennialmedia/UserData$Politics;

    aput-object v1, v0, v7

    sget-object v1, Lcom/millennialmedia/UserData$Politics;->LIBERAL:Lcom/millennialmedia/UserData$Politics;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/millennialmedia/UserData$Politics;->INDEPENDENT:Lcom/millennialmedia/UserData$Politics;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/millennialmedia/UserData$Politics;->OTHER:Lcom/millennialmedia/UserData$Politics;

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/UserData$Politics;->a:[Lcom/millennialmedia/UserData$Politics;

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
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput-object p3, p0, Lcom/millennialmedia/UserData$Politics;->value:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/UserData$Politics;
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/millennialmedia/UserData$Politics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/UserData$Politics;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/UserData$Politics;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/millennialmedia/UserData$Politics;->a:[Lcom/millennialmedia/UserData$Politics;

    invoke-virtual {v0}, [Lcom/millennialmedia/UserData$Politics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/UserData$Politics;

    return-object v0
.end method
