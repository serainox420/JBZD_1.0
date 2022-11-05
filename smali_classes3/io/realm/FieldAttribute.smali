.class public final enum Lio/realm/FieldAttribute;
.super Ljava/lang/Enum;
.source "FieldAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/FieldAttribute;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INDEXED:Lio/realm/FieldAttribute;

.field public static final enum PRIMARY_KEY:Lio/realm/FieldAttribute;

.field public static final enum REQUIRED:Lio/realm/FieldAttribute;

.field private static final synthetic a:[Lio/realm/FieldAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lio/realm/FieldAttribute;

    const-string v1, "INDEXED"

    invoke-direct {v0, v1, v2}, Lio/realm/FieldAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/FieldAttribute;->INDEXED:Lio/realm/FieldAttribute;

    .line 37
    new-instance v0, Lio/realm/FieldAttribute;

    const-string v1, "PRIMARY_KEY"

    invoke-direct {v0, v1, v3}, Lio/realm/FieldAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/FieldAttribute;->PRIMARY_KEY:Lio/realm/FieldAttribute;

    .line 46
    new-instance v0, Lio/realm/FieldAttribute;

    const-string v1, "REQUIRED"

    invoke-direct {v0, v1, v4}, Lio/realm/FieldAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/FieldAttribute;->REQUIRED:Lio/realm/FieldAttribute;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lio/realm/FieldAttribute;

    sget-object v1, Lio/realm/FieldAttribute;->INDEXED:Lio/realm/FieldAttribute;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/FieldAttribute;->PRIMARY_KEY:Lio/realm/FieldAttribute;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/FieldAttribute;->REQUIRED:Lio/realm/FieldAttribute;

    aput-object v1, v0, v4

    sput-object v0, Lio/realm/FieldAttribute;->a:[Lio/realm/FieldAttribute;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/FieldAttribute;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lio/realm/FieldAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/FieldAttribute;

    return-object v0
.end method

.method public static values()[Lio/realm/FieldAttribute;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lio/realm/FieldAttribute;->a:[Lio/realm/FieldAttribute;

    invoke-virtual {v0}, [Lio/realm/FieldAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/FieldAttribute;

    return-object v0
.end method
