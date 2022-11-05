.class Lio/realm/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field private final a:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lio/realm/Property;->a:J

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p3}, Lio/realm/RealmObjectSchema;->c()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p2}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v1

    invoke-static {p1, v1, v0}, Lio/realm/Property;->nativeCreateProperty(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/Property;->a:J

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p2}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v1

    if-nez p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v1, p3, p4, v0}, Lio/realm/Property;->nativeCreateProperty(Ljava/lang/String;IZZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/Property;->a:J

    .line 33
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeCreateProperty(Ljava/lang/String;ILjava/lang/String;)J
.end method

.method private static native nativeCreateProperty(Ljava/lang/String;IZZZ)J
.end method


# virtual methods
.method protected a()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lio/realm/Property;->a:J

    return-wide v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 49
    iget-wide v0, p0, Lio/realm/Property;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 50
    iget-wide v0, p0, Lio/realm/Property;->a:J

    invoke-static {v0, v1}, Lio/realm/Property;->nativeClose(J)V

    .line 52
    :cond_0
    return-void
.end method
