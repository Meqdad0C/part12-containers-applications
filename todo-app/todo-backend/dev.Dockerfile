FROM node:16
  
WORKDIR /usr/src/app

COPY --chown=node:node . .
RUN npm ci 

# ENV DEBUG=express:*
# ENV DEBUG_COLORS=true
ENV NODE_ENV=development
ENV PORT=3003
  
USER node
CMD npm run dev