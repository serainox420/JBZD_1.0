package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.deser.Deserializers;
import com.fasterxml.jackson.databind.ser.Serializers;
import java.io.Serializable;
/* loaded from: classes.dex */
public class OptionalHandlerFactory implements Serializable {
    private static final Class<?> CLASS_DOM_DOCUMENT;
    private static final Class<?> CLASS_DOM_NODE;
    private static final String DESERIALIZERS_FOR_JAVAX_XML = "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers";
    private static final String DESERIALIZER_FOR_DOM_DOCUMENT = "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer";
    private static final String DESERIALIZER_FOR_DOM_NODE = "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer";
    private static final String PACKAGE_PREFIX_JAVAX_XML = "javax.xml.";
    private static final String SERIALIZERS_FOR_JAVAX_XML = "com.fasterxml.jackson.databind.ext.CoreXMLSerializers";
    private static final String SERIALIZER_FOR_DOM_NODE = "com.fasterxml.jackson.databind.ext.DOMSerializer";
    private static final Java7Support _jdk7Helper;
    public static final OptionalHandlerFactory instance;
    private static final long serialVersionUID = 1;

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:14:0x0024
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:82)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:48)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:40)
        */
    static {
        /*
            r2 = 0
            java.lang.Class<org.w3c.dom.Node> r0 = org.w3c.dom.Node.class
            java.lang.Class<org.w3c.dom.Document> r1 = org.w3c.dom.Document.class
        L5:
            com.fasterxml.jackson.databind.ext.OptionalHandlerFactory.CLASS_DOM_NODE = r0
            com.fasterxml.jackson.databind.ext.OptionalHandlerFactory.CLASS_DOM_DOCUMENT = r1
            com.fasterxml.jackson.databind.ext.Java7Support r2 = com.fasterxml.jackson.databind.ext.Java7Support.instance()     // Catch: java.lang.Throwable -> L22
        Ld:
            com.fasterxml.jackson.databind.ext.OptionalHandlerFactory._jdk7Helper = r2
            com.fasterxml.jackson.databind.ext.OptionalHandlerFactory r0 = new com.fasterxml.jackson.databind.ext.OptionalHandlerFactory
            r0.<init>()
            com.fasterxml.jackson.databind.ext.OptionalHandlerFactory.instance = r0
            return
        L17:
            r0 = move-exception
            r0 = r2
        L19:
            java.io.PrintStream r1 = java.lang.System.err
            java.lang.String r3 = "WARNING: could not load DOM Node and/or Document classes"
            r1.println(r3)
            r1 = r2
            goto L5
        L22:
            r0 = move-exception
            goto Ld
        L24:
            r1 = move-exception
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ext.OptionalHandlerFactory.<clinit>():void");
    }

    protected OptionalHandlerFactory() {
    }

    public JsonSerializer<?> findSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription) {
        Object instantiate;
        JsonSerializer<?> serializerForJavaNioFilePath;
        Class<?> rawClass = javaType.getRawClass();
        if (_jdk7Helper == null || (serializerForJavaNioFilePath = _jdk7Helper.getSerializerForJavaNioFilePath(rawClass)) == null) {
            if (CLASS_DOM_NODE != null && CLASS_DOM_NODE.isAssignableFrom(rawClass)) {
                return (JsonSerializer) instantiate(SERIALIZER_FOR_DOM_NODE);
            }
            if ((rawClass.getName().startsWith(PACKAGE_PREFIX_JAVAX_XML) || hasSuperClassStartingWith(rawClass, PACKAGE_PREFIX_JAVAX_XML)) && (instantiate = instantiate(SERIALIZERS_FOR_JAVAX_XML)) != null) {
                return ((Serializers) instantiate).findSerializer(serializationConfig, javaType, beanDescription);
            }
            return null;
        }
        return serializerForJavaNioFilePath;
    }

    public JsonDeserializer<?> findDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        Object instantiate;
        JsonDeserializer<?> deserializerForJavaNioFilePath;
        Class<?> rawClass = javaType.getRawClass();
        if (_jdk7Helper == null || (deserializerForJavaNioFilePath = _jdk7Helper.getDeserializerForJavaNioFilePath(rawClass)) == null) {
            if (CLASS_DOM_NODE != null && CLASS_DOM_NODE.isAssignableFrom(rawClass)) {
                return (JsonDeserializer) instantiate(DESERIALIZER_FOR_DOM_NODE);
            }
            if (CLASS_DOM_DOCUMENT != null && CLASS_DOM_DOCUMENT.isAssignableFrom(rawClass)) {
                return (JsonDeserializer) instantiate(DESERIALIZER_FOR_DOM_DOCUMENT);
            }
            if ((rawClass.getName().startsWith(PACKAGE_PREFIX_JAVAX_XML) || hasSuperClassStartingWith(rawClass, PACKAGE_PREFIX_JAVAX_XML)) && (instantiate = instantiate(DESERIALIZERS_FOR_JAVAX_XML)) != null) {
                return ((Deserializers) instantiate).findBeanDeserializer(javaType, deserializationConfig, beanDescription);
            }
            return null;
        }
        return deserializerForJavaNioFilePath;
    }

    private Object instantiate(String str) {
        try {
            return Class.forName(str).newInstance();
        } catch (Exception | LinkageError e) {
            return null;
        }
    }

    private boolean hasSuperClassStartingWith(Class<?> cls, String str) {
        for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null && superclass != Object.class; superclass = superclass.getSuperclass()) {
            if (superclass.getName().startsWith(str)) {
                return true;
            }
        }
        return false;
    }
}
