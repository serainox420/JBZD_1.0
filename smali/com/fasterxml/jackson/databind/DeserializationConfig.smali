.class public final Lcom/fasterxml/jackson/databind/DeserializationConfig;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.source "DeserializationConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase",
        "<",
        "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
        "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _deserFeatures:I

.field protected final _formatReadFeatures:I

.field protected final _formatReadFeaturesToChange:I

.field protected final _nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

.field protected final _parserFeatures:I

.field protected final _parserFeaturesToChange:I

.field protected final _problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;I)V

    .line 132
    iput p3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 133
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 134
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 135
    iput p4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 136
    iput p5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 137
    iput p6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 138
    iput p7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 139
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 197
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 198
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 199
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 200
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 201
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 202
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 203
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 204
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    .line 160
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 161
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 162
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 163
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 164
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 165
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 166
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 167
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    .line 221
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 222
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 223
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 224
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 225
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 226
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 227
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 228
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V

    .line 233
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 234
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 235
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 236
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 237
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 238
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 239
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 240
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 251
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 252
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 253
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 254
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 255
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 256
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 257
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 258
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V

    .line 148
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 149
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 150
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 151
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 152
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 153
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 154
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 155
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 172
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 173
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 174
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 175
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 176
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 177
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 178
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 179
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 185
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 186
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 187
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 188
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 189
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 190
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 191
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 192
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/Class;)V

    .line 209
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 210
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 211
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 212
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 213
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 214
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 215
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 216
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 108
    const-class v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 109
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 111
    iput v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 112
    iput v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 113
    iput v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 114
    iput v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 115
    return-void
.end method

.method private final _withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public findTypeDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 936
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    .line 937
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .line 938
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v1, p0, v2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 944
    if-nez v1, :cond_0

    .line 945
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 946
    if-nez v1, :cond_1

    .line 965
    :goto_0
    return-object v0

    .line 950
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/util/Collection;

    move-result-object v0

    .line 965
    :cond_1
    invoke-interface {v1, p0, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 751
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 754
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;->instance:Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;

    goto :goto_0
.end method

.method protected getBaseSettings()Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    return-object v0
.end method

.method public getDefaultPropertyInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1

    .prologue
    .line 784
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->EMPTY_INCLUDE:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0
.end method

.method public getDefaultPropertyInclusion(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->findConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->getInclude()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_0

    .line 796
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->EMPTY_INCLUDE:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    goto :goto_0
.end method

.method public getDefaultPropertyInclusion(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;",
            ")",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    .prologue
    .line 803
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->findConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->getInclude()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    .line 806
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 810
    :cond_0
    return-object p2
.end method

.method public final getDeserializationFeatures()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    return v0
.end method

.method public final getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    return-object v0
.end method

.method public getProblemHandlers()Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 879
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    return-object v0
.end method

.method public final hasDeserializationFeatures(I)Z
    .locals 1

    .prologue
    .line 847
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSomeOfFeatures(I)Z
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 2

    .prologue
    .line 727
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-eqz v0, :cond_0

    .line 728
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonParser;->overrideStdFeatures(II)Lcom/fasterxml/jackson/core/JsonParser;

    .line 730
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-eqz v0, :cond_1

    .line 731
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonParser;->overrideFormatFeatures(II)Lcom/fasterxml/jackson/core/JsonParser;

    .line 733
    :cond_1
    return-void
.end method

.method public introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectDirectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectForBuilder(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;Lcom/fasterxml/jackson/core/JsonFactory;)Z
    .locals 2

    .prologue
    .line 833
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    .line 834
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 835
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 837
    :goto_0
    return v0

    .line 835
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 837
    :cond_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 2

    .prologue
    .line 829
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useRootWrapping()Z
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 825
    :goto_0
    return v0

    .line 823
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 825
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 604
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v1

    or-int v6, v0, v1

    .line 605
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v1

    or-int v7, v0, v1

    .line 606
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne v0, v6, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne v0, v7, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 524
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int v4, v0, v1

    .line 525
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int v5, v0, v1

    .line 526
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne v0, v5, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 424
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v1

    or-int v3, v0, v1

    .line 425
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v3, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public varargs with(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 438
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v1

    or-int v3, v0, v1

    .line 439
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 440
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v2

    or-int/2addr v3, v2

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v3, v0, :cond_1

    :goto_1
    return-object p0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 300
    if-eqz p2, :cond_0

    .line 301
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v1

    or-int v2, v0, v1

    .line 305
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    if-ne v2, v0, :cond_1

    :goto_1
    return-object p0

    .line 303
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v2, v0, v1

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withClassIntrospector(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withVisibilityChecker(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withTypeResolverBuilder(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    if-ne v0, p1, :cond_0

    .line 684
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public varargs with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 272
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    .line 273
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p1, v0

    .line 274
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v3

    or-int/2addr v2, v3

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    if-ne v2, v0, :cond_1

    :goto_1
    return-object p0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 620
    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 621
    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 622
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 623
    invoke-interface {v2}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v2

    .line 624
    or-int/2addr v6, v2

    .line 625
    or-int/2addr v7, v2

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne v0, v6, :cond_1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne v0, v7, :cond_1

    :goto_1
    return-object p0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 540
    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 541
    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 542
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 543
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v2

    .line 544
    or-int/2addr v4, v2

    .line 545
    or-int/2addr v5, v2

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne v0, v5, :cond_1

    :goto_1
    return-object p0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 454
    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 455
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 456
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v2

    or-int/2addr v3, v2

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v3, v0, :cond_1

    :goto_1
    return-object p0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public withHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 3

    .prologue
    .line 694
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->contains(Lcom/fasterxml/jackson/databind/util/LinkedNode;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    new-instance v1, Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/util/LinkedNode;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withNoProblemHandlers()Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    if-nez v0, :cond_0

    .line 709
    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    const/4 v0, 0x0

    check-cast v0, Lcom/fasterxml/jackson/databind/util/LinkedNode;

    invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 348
    if-nez p1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v0, :cond_2

    .line 355
    :cond_0
    :goto_0
    return-object p0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_view:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public without(Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 641
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v6, v0, v1

    .line 642
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v1

    or-int v7, v0, v1

    .line 643
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne v0, v6, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne v0, v7, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public without(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 561
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v4, v0, v1

    .line 562
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int v5, v0, v1

    .line 563
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne v0, v5, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public without(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 470
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v3, v0, v1

    .line 471
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v3, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public varargs without(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 484
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v3, v0, v1

    .line 485
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 486
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v3, v2

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v3, v0, :cond_1

    :goto_1
    return-object p0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public varargs without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 286
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    .line 287
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p1, v0

    .line 288
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    if-ne v2, v0, :cond_1

    :goto_1
    return-object p0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public bridge synthetic without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 657
    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 658
    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 659
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 660
    invoke-interface {v2}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v2

    .line 661
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v6, v3

    .line 662
    or-int/2addr v7, v2

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne v0, v6, :cond_1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne v0, v7, :cond_1

    :goto_1
    return-object p0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 577
    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 578
    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 579
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 580
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v2

    .line 581
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v4, v3

    .line 582
    or-int/2addr v5, v2

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne v0, v5, :cond_1

    :goto_1
    return-object p0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 8

    .prologue
    .line 500
    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 501
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 502
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v3, v2

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v3, v0, :cond_1

    :goto_1
    return-object p0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;IIIIII)V

    move-object p0, v0

    goto :goto_1
.end method
