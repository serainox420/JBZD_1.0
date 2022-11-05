.class public abstract Lcom/millennialmedia/internal/AdPlacementMetadata;
.super Ljava/lang/Object;
.source "AdPlacementMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MetadataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final METADATA_KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final METADATA_KEY_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final METADATA_KEY_NATIVE_TYPES:Ljava/lang/String; = "nativeTypes"

.field public static final METADATA_KEY_PLACEMENT_ID:Ljava/lang/String; = "placementId"

.field public static final METADATA_KEY_PLACEMENT_TYPE:Ljava/lang/String; = "placementType"

.field public static final METADATA_KEY_SUPPORTED_ORIENTATIONS:Ljava/lang/String; = "supportedOrientations"

.field public static final METADATA_KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcom/millennialmedia/internal/AdPlacementMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementMetadata;->a:Ljava/lang/String;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "portrait"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "landscape"

    aput-object v2, v0, v1

    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementMetadata;->b:Ljava/util/List;

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->f:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    if-eqz p2, :cond_3

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 162
    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 163
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-interface {p3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 167
    sget-object v6, Lcom/millennialmedia/internal/AdPlacementMetadata;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Value <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "> is not a valid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 171
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 185
    :cond_3
    :goto_2
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public getImpressionGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOrientations()Ljava/util/List;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->e:Ljava/util/List;

    return-object v0
.end method

.method public setImpressionGroup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMetadataType;"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->d:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMetadataType;"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->c:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public setSupportedOrientations(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMetadataType;"
        }
    .end annotation

    .prologue
    .line 82
    const-string v0, "orientation"

    sget-object v1, Lcom/millennialmedia/internal/AdPlacementMetadata;->b:Ljava/util/List;

    invoke-virtual {p0, v0, p1, v1}, Lcom/millennialmedia/internal/AdPlacementMetadata;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->e:Ljava/util/List;

    .line 84
    return-object p0
.end method

.method public toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/internal/AdPlacement;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    const-string v1, "placementId"

    iget-object v2, p1, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "placementType"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "keywords"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const-string v1, "supportedOrientations"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    return-object v0
.end method
