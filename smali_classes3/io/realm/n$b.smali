.class final enum Lio/realm/n$b;
.super Ljava/lang/Enum;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/n$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/realm/n$b;

.field public static final enum b:Lio/realm/n$b;

.field private static final synthetic c:[Lio/realm/n$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lio/realm/n$b;

    const-string v1, "TYPED_REALM"

    invoke-direct {v0, v1, v2}, Lio/realm/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/n$b;->a:Lio/realm/n$b;

    .line 61
    new-instance v0, Lio/realm/n$b;

    const-string v1, "DYNAMIC_REALM"

    invoke-direct {v0, v1, v3}, Lio/realm/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/n$b;->b:Lio/realm/n$b;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lio/realm/n$b;

    sget-object v1, Lio/realm/n$b;->a:Lio/realm/n$b;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/n$b;->b:Lio/realm/n$b;

    aput-object v1, v0, v3

    sput-object v0, Lio/realm/n$b;->c:[Lio/realm/n$b;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/Class;)Lio/realm/n$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/b;",
            ">;)",
            "Lio/realm/n$b;"
        }
    .end annotation

    .prologue
    .line 64
    const-class v0, Lio/realm/l;

    if-ne p0, v0, :cond_0

    .line 65
    sget-object v0, Lio/realm/n$b;->a:Lio/realm/n$b;

    .line 67
    :goto_0
    return-object v0

    .line 66
    :cond_0
    const-class v0, Lio/realm/d;

    if-ne p0, v0, :cond_1

    .line 67
    sget-object v0, Lio/realm/n$b;->b:Lio/realm/n$b;

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/n$b;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lio/realm/n$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/n$b;

    return-object v0
.end method

.method public static values()[Lio/realm/n$b;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lio/realm/n$b;->c:[Lio/realm/n$b;

    invoke-virtual {v0}, [Lio/realm/n$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/n$b;

    return-object v0
.end method
